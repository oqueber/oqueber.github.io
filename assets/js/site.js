// oqueber.com — Lab filters + article tabs. Without JS everything is simply shown.
(function () {
  'use strict';

  // ── Lab: filter cards by status (?estado=idea|working|done) ──
  var filters = document.querySelector('[data-filters]');
  if (filters) {
    var buttons = filters.querySelectorAll('[data-filter]');
    var cards = document.querySelectorAll('[data-cards] [data-status]');
    var line = document.querySelector('[data-status-line]');
    var empty = document.querySelector('[data-empty]');

    var apply = function (value, push) {
      var shown = 0;
      buttons.forEach(function (b) { b.setAttribute('aria-pressed', String(b.dataset.filter === value)); });
      cards.forEach(function (c) {
        var match = value === 'all' || c.dataset.status === value;
        c.hidden = !match;
        if (match) shown++;
      });
      if (line) line.textContent = value === 'all' ? '' : (line.dataset[value] || '');
      if (empty) empty.hidden = shown > 0;
      if (push) {
        var url = new URL(location.href);
        if (value === 'all') url.searchParams.delete('estado'); else url.searchParams.set('estado', value);
        history.replaceState(null, '', url);
      }
    };

    buttons.forEach(function (b) {
      b.addEventListener('click', function () { apply(b.dataset.filter, true); });
    });
    filters.hidden = false;
    var initial = new URLSearchParams(location.search).get('estado');
    apply(['idea', 'working', 'done'].indexOf(initial) > -1 ? initial : 'all', false);
  }

  // ── CV: short / long version of the career, remembered per visitor ──
  var cvSwitch = document.querySelector('[data-cv-switch]');
  var cvPath = document.querySelector('[data-cv-path]');
  if (cvSwitch && cvPath) {
    var versionButtons = cvSwitch.querySelectorAll('[data-version]');
    var setVersion = function (v) {
      cvPath.dataset.version = v;
      versionButtons.forEach(function (b) { b.setAttribute('aria-pressed', String(b.dataset.version === v)); });
      try { localStorage.setItem('cv-version', v); } catch (e) { /* private mode */ }
    };
    versionButtons.forEach(function (b) {
      b.addEventListener('click', function () { setVersion(b.dataset.version); });
    });
    var saved = null;
    try { saved = localStorage.getItem('cv-version'); } catch (e) { /* private mode */ }
    cvSwitch.hidden = false;
    setVersion(saved === 'long' ? 'long' : 'short');
  }

  // ── Article: tabs (Result · Brief · Process · Tools), deep-linkable with #process ──
  var tablist = document.querySelector('[data-tabs]');
  if (tablist) {
    var tabs = Array.prototype.slice.call(tablist.querySelectorAll('[role="tab"]'));
    var panelOf = function (tab) { return document.getElementById(tab.getAttribute('aria-controls')); };

    var select = function (tab, focus, push) {
      tabs.forEach(function (t) {
        var on = t === tab;
        t.setAttribute('aria-selected', String(on));
        t.tabIndex = on ? 0 : -1;
        panelOf(t).hidden = !on;
      });
      if (focus) tab.focus();
      if (push) history.replaceState(null, '', '#' + tab.getAttribute('aria-controls'));
    };

    tabs.forEach(function (tab, i) {
      tab.addEventListener('click', function () { select(tab, false, true); });
      tab.addEventListener('keydown', function (e) {
        var next = null;
        if (e.key === 'ArrowRight') next = tabs[(i + 1) % tabs.length];
        else if (e.key === 'ArrowLeft') next = tabs[(i - 1 + tabs.length) % tabs.length];
        else if (e.key === 'Home') next = tabs[0];
        else if (e.key === 'End') next = tabs[tabs.length - 1];
        if (next) { e.preventDefault(); select(next, true, true); }
      });
    });

    var fromHash = function () {
      var id = location.hash.slice(1);
      return tabs.filter(function (t) { return t.getAttribute('aria-controls') === id; })[0];
    };
    var byDefault = tabs.filter(function (t) { return t.getAttribute('aria-controls') === tablist.dataset.default; })[0];
    tablist.hidden = false;
    select(fromHash() || byDefault || tabs[0], false, false);
    window.addEventListener('hashchange', function () { var t = fromHash(); if (t) select(t, false, false); });
  }
})();

-ifndef(_ELDAP_CLIENT_HRL).

-define(_ELDAP_CLIENT_HRL, 1).

%%%
%%% Search input parameters
%%%
-record(eldap_client_search,
        {base = [],             % Baseobject
         filter = [],           % Search conditions
         size_limit = 0,        % Setting default size limit to 0 makes it unlimited
         scope = wholeSubtree,    % Search scope
         deref = derefAlways,     % Dereference
         attributes = [],       % Attributes to be returned
         types_only = false,    % Return types+values or types
         timeout = 0}).            % Timelimit for search
%%%
%%% Returned search result
%%%
-record(eldap_client_search_result,
        {entries = [],          % List of #eldap_entry{} records
         referrals = [],        % List of referrals
         controls = []}).          % List of ldap result controls
%%%
%%% LDAP entry
%%%
-record(eldap_client_entry,
        {object_name = "",      % The DN for the entry
         attributes = []}).        % List of {Attribute, Value} pairs

-endif.

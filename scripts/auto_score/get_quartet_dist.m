function d_dist = get_quartet_dist(d_quartet, weights)
if size(d_quartet,1) == 4; d_quartet = d_quartet'; end;

% d_in columns WT; A; B; AB
% d_out columns WT-AB; WT-A; WT-B; AB-A; AB-B; A-B

if ~exist('weights','var') || isempty(weights);
    d_dist = [ ...
        eu_dist(d_quartet(:,1),d_quartet(:,4)), ...
        eu_dist(d_quartet(:,1),d_quartet(:,2)), ...
        eu_dist(d_quartet(:,1),d_quartet(:,3)), ...
        eu_dist(d_quartet(:,4),d_quartet(:,2)), ...
        eu_dist(d_quartet(:,4),d_quartet(:,3)), ...
        eu_dist(d_quartet(:,2),d_quartet(:,3)), ...
    ];
else;
    if size(weights,1) == 1; weights = weights'; end;
    
    d_dist = [ ...
        eu_dist_weighted(d_quartet(:,1),d_quartet(:,4), weights), ...
        eu_dist_weighted(d_quartet(:,1),d_quartet(:,2), weights), ...
        eu_dist_weighted(d_quartet(:,1),d_quartet(:,3), weights), ...
        eu_dist_weighted(d_quartet(:,4),d_quartet(:,2), weights), ...
        eu_dist_weighted(d_quartet(:,4),d_quartet(:,3), weights), ...
        eu_dist_weighted(d_quartet(:,2),d_quartet(:,3), weights), ...
    ];
end;

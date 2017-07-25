function d_dist = get_quartet_dist_weighted(d_quartet)
if size(d_quartet,1) == 4; d_quartet = d_quartet'; end;

% d_in columns WT; A; B; AB
% d_out columns WT-AB; WT-A; WT-B; AB-A; AB-B; A-B
d_dist = [ ...
    weighted_dist(d_quartet(:,1),d_quartet(:,4)), ...
    weighted_dist(d_quartet(:,1),d_quartet(:,2)), ...
    weighted_dist(d_quartet(:,1),d_quartet(:,3)), ...
    weighted_dist(d_quartet(:,4),d_quartet(:,2)), ...
    weighted_dist(d_quartet(:,4),d_quartet(:,3)), ...
    weighted_dist(d_quartet(:,2),d_quartet(:,3)), ...
];

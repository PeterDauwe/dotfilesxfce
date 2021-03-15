static const char norm_fg[] = "#9ed0e8";
static const char norm_bg[] = "#030F18";
static const char norm_border[] = "#6e91a2";

static const char sel_fg[] = "#9ed0e8";
static const char sel_bg[] = "#0F588A";
static const char sel_border[] = "#9ed0e8";

static const char urg_fg[] = "#9ed0e8";
static const char urg_bg[] = "#4A6A78";
static const char urg_border[] = "#4A6A78";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#030F18", /* black   */
  [1] = "#4A6A78", /* red     */
  [2] = "#0F588A", /* green   */
  [3] = "#196DA7", /* yellow  */
  [4] = "#187CBE", /* blue    */
  [5] = "#2597DB", /* magenta */
  [6] = "#52A9D2", /* cyan    */
  [7] = "#9ed0e8", /* white   */

  /* 8 bright colors */
  [8]  = "#6e91a2",  /* black   */
  [9]  = "#4A6A78",  /* red     */
  [10] = "#0F588A", /* green   */
  [11] = "#196DA7", /* yellow  */
  [12] = "#187CBE", /* blue    */
  [13] = "#2597DB", /* magenta */
  [14] = "#52A9D2", /* cyan    */
  [15] = "#9ed0e8", /* white   */

  /* special colors */
  [256] = "#030F18", /* background */
  [257] = "#9ed0e8", /* foreground */
  [258] = "#9ed0e8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

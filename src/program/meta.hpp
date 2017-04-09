#pragma once
#ifndef _META_HPP
#define _META_HPP

#define PROGRAM_NAME "raytrace"

#define MODE_RENDER "render"
#define MODE_SCENEINFO "sceneinfo"
#define MODE_PIXELRAY "pixelray"
#define MODE_FIRSTHIT "firsthit"
#define MODE_HELP "help"

static const size_t mode_count = 5;
static const char *mode_names[] = {
   MODE_RENDER, MODE_SCENEINFO, MODE_PIXELRAY,
   MODE_FIRSTHIT, MODE_HELP
};

#endif /* end of include guard: _META_HPP */

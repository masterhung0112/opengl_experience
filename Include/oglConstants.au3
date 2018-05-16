; OpenGl constants from gl.h, glu.h and glew.h

#include-once

#cs
typedef unsigned int GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef int GLsizei;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
typedef void GLvoid;
#ce

; ----------------------------- GL_VERSION_1_1 ----------------------------

Global Const $GL_VERSION_1_1                    = 1

; AccumOp
Global Const $GL_ACCUM                          = 0x0100
Global Const $GL_LOAD                           = 0x0101
Global Const $GL_RETURN                         = 0x0102
Global Const $GL_MULT                           = 0x0103
Global Const $GL_ADD                            = 0x0104

; AlphaFunction
Global Const $GL_NEVER                          = 0x0200
Global Const $GL_LESS                           = 0x0201
Global Const $GL_EQUAL                          = 0x0202
Global Const $GL_LEQUAL                         = 0x0203
Global Const $GL_GREATER                        = 0x0204
Global Const $GL_NOTEQUAL                       = 0x0205
Global Const $GL_GEQUAL                         = 0x0206
Global Const $GL_ALWAYS                         = 0x0207

; AttribMask
Global Const $GL_CURRENT_BIT                    = 0x00000001
Global Const $GL_POINT_BIT                      = 0x00000002
Global Const $GL_LINE_BIT                       = 0x00000004
Global Const $GL_POLYGON_BIT                    = 0x00000008
Global Const $GL_POLYGON_STIPPLE_BIT            = 0x00000010
Global Const $GL_PIXEL_MODE_BIT                 = 0x00000020
Global Const $GL_LIGHTING_BIT                   = 0x00000040
Global Const $GL_FOG_BIT                        = 0x00000080
Global Const $GL_DEPTH_BUFFER_BIT               = 0x00000100
Global Const $GL_ACCUM_BUFFER_BIT               = 0x00000200
Global Const $GL_STENCIL_BUFFER_BIT             = 0x00000400
Global Const $GL_VIEWPORT_BIT                   = 0x00000800
Global Const $GL_TRANSFORM_BIT                  = 0x00001000
Global Const $GL_ENABLE_BIT                     = 0x00002000
Global Const $GL_COLOR_BUFFER_BIT               = 0x00004000
Global Const $GL_HINT_BIT                       = 0x00008000
Global Const $GL_EVAL_BIT                       = 0x00010000
Global Const $GL_LIST_BIT                       = 0x00020000
Global Const $GL_TEXTURE_BIT                    = 0x00040000
Global Const $GL_SCISSOR_BIT                    = 0x00080000
Global Const $GL_ALL_ATTRIB_BITS                = 0x000fffff

; BeginMode
Global Const $GL_POINTS                         = 0x0000
Global Const $GL_LINES                          = 0x0001
Global Const $GL_LINE_LOOP                      = 0x0002
Global Const $GL_LINE_STRIP                     = 0x0003
Global Const $GL_TRIANGLES                      = 0x0004
Global Const $GL_TRIANGLE_STRIP                 = 0x0005
Global Const $GL_TRIANGLE_FAN                   = 0x0006
Global Const $GL_QUADS                          = 0x0007
Global Const $GL_QUAD_STRIP                     = 0x0008
Global Const $GL_POLYGON                        = 0x0009

; BlendingFactorDest
Global Const $GL_ZERO                           = 0
Global Const $GL_ONE                            = 1
Global Const $GL_SRC_COLOR                      = 0x0300
Global Const $GL_ONE_MINUS_SRC_COLOR            = 0x0301
Global Const $GL_SRC_ALPHA                      = 0x0302
Global Const $GL_ONE_MINUS_SRC_ALPHA            = 0x0303
Global Const $GL_DST_ALPHA                      = 0x0304
Global Const $GL_ONE_MINUS_DST_ALPHA            = 0x0305

; BlendingFactorSrc
;            $GL_ZERO
;            $GL_ONE
Global Const $GL_DST_COLOR                      = 0x0306
Global Const $GL_ONE_MINUS_DST_COLOR            = 0x0307
Global Const $GL_SRC_ALPHA_SATURATE             = 0x0308
;            $GL_SRC_ALPHA
;            $GL_ONE_MINUS_SRC_ALPHA
;            $GL_DST_ALPHA
;            $GL_ONE_MINUS_DST_ALPHA

; Boolean
Global Const $GL_TRUE                           = 1
Global Const $GL_FALSE                          = 0

; ClearBufferMask
;            $GL_COLOR_BUFFER_BIT
;            $GL_ACCUM_BUFFER_BIT
;            $GL_STENCIL_BUFFER_BIT
;            $GL_DEPTH_BUFFER_BIT

; ClientArrayType
;            $GL_VERTEX_ARRAY
;            $GL_NORMAL_ARRAY
;            $GL_COLOR_ARRAY
;            $GL_INDEX_ARRAY
;            $GL_TEXTURE_COORD_ARRAY
;            $GL_EDGE_FLAG_ARRAY

; ClipPlaneName
Global Const $GL_CLIP_PLANE0                    = 0x3000
Global Const $GL_CLIP_PLANE1                    = 0x3001
Global Const $GL_CLIP_PLANE2                    = 0x3002
Global Const $GL_CLIP_PLANE3                    = 0x3003
Global Const $GL_CLIP_PLANE4                    = 0x3004
Global Const $GL_CLIP_PLANE5                    = 0x3005

; ColorMaterialFace
;            $GL_FRONT
;            $GL_BACK
;            $GL_FRONT_AND_BACK

; ColorMaterialParameter
;            $GL_AMBIENT
;            $GL_DIFFUSE
;            $GL_SPECULAR
;            $GL_EMISSION
;            $GL_AMBIENT_AND_DIFFUSE

; ColorPointerType
;            $GL_BYTE
;            $GL_UNSIGNED_BYTE
;            $GL_SHORT
;            $GL_UNSIGNED_SHORT
;            $GL_INT
;            $GL_UNSIGNED_INT
;            $GL_FLOAT
;            $GL_DOUBLE

; CullFaceMode
;            $GL_FRONT
;            $GL_BACK
;            $GL_FRONT_AND_BACK

; DataType
Global Const $GL_BYTE                           = 0x1400
Global Const $GL_UNSIGNED_BYTE                  = 0x1401
Global Const $GL_SHORT                          = 0x1402
Global Const $GL_UNSIGNED_SHORT                 = 0x1403
Global Const $GL_INT                            = 0x1404
Global Const $GL_UNSIGNED_INT                   = 0x1405
Global Const $GL_FLOAT                          = 0x1406
Global Const $GL_2_BYTES                        = 0x1407
Global Const $GL_3_BYTES                        = 0x1408
Global Const $GL_4_BYTES                        = 0x1409
Global Const $GL_DOUBLE                         = 0x140A

; DepthFunction
;            $GL_NEVER
;            $GL_LESS
;            $GL_EQUAL
;            $GL_LEQUAL
;            $GL_GREATER
;            $GL_NOTEQUAL
;            $GL_GEQUAL
;            $GL_ALWAYS

; DrawBufferMode
Global Const $GL_NONE                           = 0
Global Const $GL_FRONT_LEFT                     = 0x0400
Global Const $GL_FRONT_RIGHT                    = 0x0401
Global Const $GL_BACK_LEFT                      = 0x0402
Global Const $GL_BACK_RIGHT                     = 0x0403
Global Const $GL_FRONT                          = 0x0404
Global Const $GL_BACK                           = 0x0405
Global Const $GL_LEFT                           = 0x0406
Global Const $GL_RIGHT                          = 0x0407
Global Const $GL_FRONT_AND_BACK                 = 0x0408
Global Const $GL_AUX0                           = 0x0409
Global Const $GL_AUX1                           = 0x040A
Global Const $GL_AUX2                           = 0x040B
Global Const $GL_AUX3                           = 0x040C

; Enable
;            $GL_FOG
;            $GL_LIGHTING
;            $GL_TEXTURE_1D
;            $GL_TEXTURE_2D
;            $GL_LINE_STIPPLE
;            $GL_POLYGON_STIPPLE
;            $GL_CULL_FACE
;            $GL_ALPHA_TEST
;            $GL_BLEND
;            $GL_INDEX_LOGIC_OP
;            $GL_COLOR_LOGIC_OP
;            $GL_DITHER
;            $GL_STENCIL_TEST
;            $GL_DEPTH_TEST
;            $GL_CLIP_PLANE0
;            $GL_CLIP_PLANE1
;            $GL_CLIP_PLANE2
;            $GL_CLIP_PLANE3
;            $GL_CLIP_PLANE4
;            $GL_CLIP_PLANE5
;            $GL_LIGHT0
;            $GL_LIGHT1
;            $GL_LIGHT2
;            $GL_LIGHT3
;            $GL_LIGHT4
;            $GL_LIGHT5
;            $GL_LIGHT6
;            $GL_LIGHT7
;            $GL_TEXTURE_GEN_S
;            $GL_TEXTURE_GEN_T
;            $GL_TEXTURE_GEN_R
;            $GL_TEXTURE_GEN_Q
;            $GL_MAP1_VERTEX_3
;            $GL_MAP1_VERTEX_4
;            $GL_MAP1_COLOR_4
;            $GL_MAP1_INDEX
;            $GL_MAP1_NORMAL
;            $GL_MAP1_TEXTURE_COORD_1
;            $GL_MAP1_TEXTURE_COORD_2
;            $GL_MAP1_TEXTURE_COORD_3
;            $GL_MAP1_TEXTURE_COORD_4
;            $GL_MAP2_VERTEX_3
;            $GL_MAP2_VERTEX_4
;            $GL_MAP2_COLOR_4
;            $GL_MAP2_INDEX
;            $GL_MAP2_NORMAL
;            $GL_MAP2_TEXTURE_COORD_1
;            $GL_MAP2_TEXTURE_COORD_2
;            $GL_MAP2_TEXTURE_COORD_3
;            $GL_MAP2_TEXTURE_COORD_4
;            $GL_POINT_SMOOTH
;            $GL_LINE_SMOOTH
;            $GL_POLYGON_SMOOTH
;            $GL_SCISSOR_TEST
;            $GL_COLOR_MATERIAL
;            $GL_NORMALIZE
;            $GL_AUTO_NORMAL
;            $GL_VERTEX_ARRAY
;            $GL_NORMAL_ARRAY
;            $GL_COLOR_ARRAY
;            $GL_INDEX_ARRAY
;            $GL_TEXTURE_COORD_ARRAY
;            $GL_EDGE_FLAG_ARRAY
;            $GL_POLYGON_OFFSET_POINT
;            $GL_POLYGON_OFFSET_LINE
;            $GL_POLYGON_OFFSET_FILL

; ErrorCode
Global Const $GL_NO_ERROR                       = 0
Global Const $GL_INVALID_ENUM                   = 0x0500
Global Const $GL_INVALID_VALUE                  = 0x0501
Global Const $GL_INVALID_OPERATION              = 0x0502
Global Const $GL_STACK_OVERFLOW                 = 0x0503
Global Const $GL_STACK_UNDERFLOW                = 0x0504
Global Const $GL_OUT_OF_MEMORY                  = 0x0505

; FeedBackMode
Global Const $GL_2D                             = 0x0600
Global Const $GL_3D                             = 0x0601
Global Const $GL_3D_COLOR                       = 0x0602
Global Const $GL_3D_COLOR_TEXTURE               = 0x0603
Global Const $GL_4D_COLOR_TEXTURE               = 0x0604

; FeedBackToken
Global Const $GL_PASS_THROUGH_TOKEN             = 0x0700
Global Const $GL_POINT_TOKEN                    = 0x0701
Global Const $GL_LINE_TOKEN                     = 0x0702
Global Const $GL_POLYGON_TOKEN                  = 0x0703
Global Const $GL_BITMAP_TOKEN                   = 0x0704
Global Const $GL_DRAW_PIXEL_TOKEN               = 0x0705
Global Const $GL_COPY_PIXEL_TOKEN               = 0x0706
Global Const $GL_LINE_RESET_TOKEN               = 0x0707

; FogMode
;            $GL_LINEAR
Global Const $GL_EXP                            = 0x0800
Global Const $GL_EXP2                           = 0x0801

; FogParameter
;            $GL_FOG_COLOR
;            $GL_FOG_DENSITY
;            $GL_FOG_END
;            $GL_FOG_INDEX
;            $GL_FOG_MODE
;            $GL_FOG_START

; FrontFaceDirection
Global Const $GL_CW                             = 0x0900
Global Const $GL_CCW                            = 0x0901

; GetMapTarget
Global Const $GL_COEFF                          = 0x0A00
Global Const $GL_ORDER                          = 0x0A01
Global Const $GL_DOMAIN                         = 0x0A02

; GetPixelMap
;            $GL_PIXEL_MAP_I_TO_I
;            $GL_PIXEL_MAP_S_TO_S
;            $GL_PIXEL_MAP_I_TO_R
;            $GL_PIXEL_MAP_I_TO_G
;            $GL_PIXEL_MAP_I_TO_B
;            $GL_PIXEL_MAP_I_TO_A
;            $GL_PIXEL_MAP_R_TO_R
;            $GL_PIXEL_MAP_G_TO_G
;            $GL_PIXEL_MAP_B_TO_B
;            $GL_PIXEL_MAP_A_TO_A

; GetPointerTarget
;            $GL_VERTEX_ARRAY_POINTER
;            $GL_NORMAL_ARRAY_POINTER
;            $GL_COLOR_ARRAY_POINTER
;            $GL_INDEX_ARRAY_POINTER
;            $GL_TEXTURE_COORD_ARRAY_POINTER
;            $GL_EDGE_FLAG_ARRAY_POINTER

; GetTarget
Global Const $GL_CURRENT_COLOR                  = 0x0B00
Global Const $GL_CURRENT_INDEX                  = 0x0B01
Global Const $GL_CURRENT_NORMAL                 = 0x0B02
Global Const $GL_CURRENT_TEXTURE_COORDS         = 0x0B03
Global Const $GL_CURRENT_RASTER_COLOR           = 0x0B04
Global Const $GL_CURRENT_RASTER_INDEX           = 0x0B05
Global Const $GL_CURRENT_RASTER_TEXTURE_COORDS  = 0x0B06
Global Const $GL_CURRENT_RASTER_POSITION        = 0x0B07
Global Const $GL_CURRENT_RASTER_POSITION_VALID  = 0x0B08
Global Const $GL_CURRENT_RASTER_DISTANCE        = 0x0B09
Global Const $GL_POINT_SMOOTH                   = 0x0B10
Global Const $GL_POINT_SIZE                     = 0x0B11
Global Const $GL_POINT_SIZE_RANGE               = 0x0B12
Global Const $GL_POINT_SIZE_GRANULARITY         = 0x0B13
Global Const $GL_LINE_SMOOTH                    = 0x0B20
Global Const $GL_LINE_WIDTH                     = 0x0B21
Global Const $GL_LINE_WIDTH_RANGE               = 0x0B22
Global Const $GL_LINE_WIDTH_GRANULARITY         = 0x0B23
Global Const $GL_LINE_STIPPLE                   = 0x0B24
Global Const $GL_LINE_STIPPLE_PATTERN           = 0x0B25
Global Const $GL_LINE_STIPPLE_REPEAT            = 0x0B26
Global Const $GL_LIST_MODE                      = 0x0B30
Global Const $GL_MAX_LIST_NESTING               = 0x0B31
Global Const $GL_LIST_BASE                      = 0x0B32
Global Const $GL_LIST_INDEX                     = 0x0B33
Global Const $GL_POLYGON_MODE                   = 0x0B40
Global Const $GL_POLYGON_SMOOTH                 = 0x0B41
Global Const $GL_POLYGON_STIPPLE                = 0x0B42
Global Const $GL_EDGE_FLAG                      = 0x0B43
Global Const $GL_CULL_FACE                      = 0x0B44
Global Const $GL_CULL_FACE_MODE                 = 0x0B45
Global Const $GL_FRONT_FACE                     = 0x0B46
Global Const $GL_LIGHTING                       = 0x0B50
Global Const $GL_LIGHT_MODEL_LOCAL_VIEWER       = 0x0B51
Global Const $GL_LIGHT_MODEL_TWO_SIDE           = 0x0B52
Global Const $GL_LIGHT_MODEL_AMBIENT            = 0x0B53
Global Const $GL_SHADE_MODEL                    = 0x0B54
Global Const $GL_COLOR_MATERIAL_FACE            = 0x0B55
Global Const $GL_COLOR_MATERIAL_PARAMETER       = 0x0B56
Global Const $GL_COLOR_MATERIAL                 = 0x0B57
Global Const $GL_FOG                            = 0x0B60
Global Const $GL_FOG_INDEX                      = 0x0B61
Global Const $GL_FOG_DENSITY                    = 0x0B62
Global Const $GL_FOG_START                      = 0x0B63
Global Const $GL_FOG_END                        = 0x0B64
Global Const $GL_FOG_MODE                       = 0x0B65
Global Const $GL_FOG_COLOR                      = 0x0B66
Global Const $GL_DEPTH_RANGE                    = 0x0B70
Global Const $GL_DEPTH_TEST                     = 0x0B71
Global Const $GL_DEPTH_WRITEMASK                = 0x0B72
Global Const $GL_DEPTH_CLEAR_VALUE              = 0x0B73
Global Const $GL_DEPTH_FUNC                     = 0x0B74
Global Const $GL_ACCUM_CLEAR_VALUE              = 0x0B80
Global Const $GL_STENCIL_TEST                   = 0x0B90
Global Const $GL_STENCIL_CLEAR_VALUE            = 0x0B91
Global Const $GL_STENCIL_FUNC                   = 0x0B92
Global Const $GL_STENCIL_VALUE_MASK             = 0x0B93
Global Const $GL_STENCIL_FAIL                   = 0x0B94
Global Const $GL_STENCIL_PASS_DEPTH_FAIL        = 0x0B95
Global Const $GL_STENCIL_PASS_DEPTH_PASS        = 0x0B96
Global Const $GL_STENCIL_REF                    = 0x0B97
Global Const $GL_STENCIL_WRITEMASK              = 0x0B98
Global Const $GL_MATRIX_MODE                    = 0x0BA0
Global Const $GL_NORMALIZE                      = 0x0BA1
Global Const $GL_VIEWPORT                       = 0x0BA2
Global Const $GL_MODELVIEW_STACK_DEPTH          = 0x0BA3
Global Const $GL_PROJECTION_STACK_DEPTH         = 0x0BA4
Global Const $GL_TEXTURE_STACK_DEPTH            = 0x0BA5
Global Const $GL_MODELVIEW_MATRIX               = 0x0BA6
Global Const $GL_PROJECTION_MATRIX              = 0x0BA7
Global Const $GL_TEXTURE_MATRIX                 = 0x0BA8
Global Const $GL_ATTRIB_STACK_DEPTH             = 0x0BB0
Global Const $GL_CLIENT_ATTRIB_STACK_DEPTH      = 0x0BB1
Global Const $GL_ALPHA_TEST                     = 0x0BC0
Global Const $GL_ALPHA_TEST_FUNC                = 0x0BC1
Global Const $GL_ALPHA_TEST_REF                 = 0x0BC2
Global Const $GL_DITHER                         = 0x0BD0
Global Const $GL_BLEND_DST                      = 0x0BE0
Global Const $GL_BLEND_SRC                      = 0x0BE1
Global Const $GL_BLEND                          = 0x0BE2
Global Const $GL_LOGIC_OP_MODE                  = 0x0BF0
Global Const $GL_INDEX_LOGIC_OP                 = 0x0BF1
Global Const $GL_COLOR_LOGIC_OP                 = 0x0BF2
Global Const $GL_AUX_BUFFERS                    = 0x0C00
Global Const $GL_DRAW_BUFFER                    = 0x0C01
Global Const $GL_READ_BUFFER                    = 0x0C02
Global Const $GL_SCISSOR_BOX                    = 0x0C10
Global Const $GL_SCISSOR_TEST                   = 0x0C11
Global Const $GL_INDEX_CLEAR_VALUE              = 0x0C20
Global Const $GL_INDEX_WRITEMASK                = 0x0C21
Global Const $GL_COLOR_CLEAR_VALUE              = 0x0C22
Global Const $GL_COLOR_WRITEMASK                = 0x0C23
Global Const $GL_INDEX_MODE                     = 0x0C30
Global Const $GL_RGBA_MODE                      = 0x0C31
Global Const $GL_DOUBLEBUFFER                   = 0x0C32
Global Const $GL_STEREO                         = 0x0C33
Global Const $GL_RENDER_MODE                    = 0x0C40
Global Const $GL_PERSPECTIVE_CORRECTION_HINT    = 0x0C50
Global Const $GL_POINT_SMOOTH_HINT              = 0x0C51
Global Const $GL_LINE_SMOOTH_HINT               = 0x0C52
Global Const $GL_POLYGON_SMOOTH_HINT            = 0x0C53
Global Const $GL_FOG_HINT                       = 0x0C54
Global Const $GL_TEXTURE_GEN_S                  = 0x0C60
Global Const $GL_TEXTURE_GEN_T                  = 0x0C61
Global Const $GL_TEXTURE_GEN_R                  = 0x0C62
Global Const $GL_TEXTURE_GEN_Q                  = 0x0C63
Global Const $GL_PIXEL_MAP_I_TO_I               = 0x0C70
Global Const $GL_PIXEL_MAP_S_TO_S               = 0x0C71
Global Const $GL_PIXEL_MAP_I_TO_R               = 0x0C72
Global Const $GL_PIXEL_MAP_I_TO_G               = 0x0C73
Global Const $GL_PIXEL_MAP_I_TO_B               = 0x0C74
Global Const $GL_PIXEL_MAP_I_TO_A               = 0x0C75
Global Const $GL_PIXEL_MAP_R_TO_R               = 0x0C76
Global Const $GL_PIXEL_MAP_G_TO_G               = 0x0C77
Global Const $GL_PIXEL_MAP_B_TO_B               = 0x0C78
Global Const $GL_PIXEL_MAP_A_TO_A               = 0x0C79
Global Const $GL_PIXEL_MAP_I_TO_I_SIZE          = 0x0CB0
Global Const $GL_PIXEL_MAP_S_TO_S_SIZE          = 0x0CB1
Global Const $GL_PIXEL_MAP_I_TO_R_SIZE          = 0x0CB2
Global Const $GL_PIXEL_MAP_I_TO_G_SIZE          = 0x0CB3
Global Const $GL_PIXEL_MAP_I_TO_B_SIZE          = 0x0CB4
Global Const $GL_PIXEL_MAP_I_TO_A_SIZE          = 0x0CB5
Global Const $GL_PIXEL_MAP_R_TO_R_SIZE          = 0x0CB6
Global Const $GL_PIXEL_MAP_G_TO_G_SIZE          = 0x0CB7
Global Const $GL_PIXEL_MAP_B_TO_B_SIZE          = 0x0CB8
Global Const $GL_PIXEL_MAP_A_TO_A_SIZE          = 0x0CB9
Global Const $GL_UNPACK_SWAP_BYTES              = 0x0CF0
Global Const $GL_UNPACK_LSB_FIRST               = 0x0CF1
Global Const $GL_UNPACK_ROW_LENGTH              = 0x0CF2
Global Const $GL_UNPACK_SKIP_ROWS               = 0x0CF3
Global Const $GL_UNPACK_SKIP_PIXELS             = 0x0CF4
Global Const $GL_UNPACK_ALIGNMENT               = 0x0CF5
Global Const $GL_PACK_SWAP_BYTES                = 0x0D00
Global Const $GL_PACK_LSB_FIRST                 = 0x0D01
Global Const $GL_PACK_ROW_LENGTH                = 0x0D02
Global Const $GL_PACK_SKIP_ROWS                 = 0x0D03
Global Const $GL_PACK_SKIP_PIXELS               = 0x0D04
Global Const $GL_PACK_ALIGNMENT                 = 0x0D05
Global Const $GL_MAP_COLOR                      = 0x0D10
Global Const $GL_MAP_STENCIL                    = 0x0D11
Global Const $GL_INDEX_SHIFT                    = 0x0D12
Global Const $GL_INDEX_OFFSET                   = 0x0D13
Global Const $GL_RED_SCALE                      = 0x0D14
Global Const $GL_RED_BIAS                       = 0x0D15
Global Const $GL_ZOOM_X                         = 0x0D16
Global Const $GL_ZOOM_Y                         = 0x0D17
Global Const $GL_GREEN_SCALE                    = 0x0D18
Global Const $GL_GREEN_BIAS                     = 0x0D19
Global Const $GL_BLUE_SCALE                     = 0x0D1A
Global Const $GL_BLUE_BIAS                      = 0x0D1B
Global Const $GL_ALPHA_SCALE                    = 0x0D1C
Global Const $GL_ALPHA_BIAS                     = 0x0D1D
Global Const $GL_DEPTH_SCALE                    = 0x0D1E
Global Const $GL_DEPTH_BIAS                     = 0x0D1F
Global Const $GL_MAX_EVAL_ORDER                 = 0x0D30
Global Const $GL_MAX_LIGHTS                     = 0x0D31
Global Const $GL_MAX_CLIP_PLANES                = 0x0D32
Global Const $GL_MAX_TEXTURE_SIZE               = 0x0D33
Global Const $GL_MAX_PIXEL_MAP_TABLE            = 0x0D34
Global Const $GL_MAX_ATTRIB_STACK_DEPTH         = 0x0D35
Global Const $GL_MAX_MODELVIEW_STACK_DEPTH      = 0x0D36
Global Const $GL_MAX_NAME_STACK_DEPTH           = 0x0D37
Global Const $GL_MAX_PROJECTION_STACK_DEPTH     = 0x0D38
Global Const $GL_MAX_TEXTURE_STACK_DEPTH        = 0x0D39
Global Const $GL_MAX_VIEWPORT_DIMS              = 0x0D3A
Global Const $GL_MAX_CLIENT_ATTRIB_STACK_DEPTH  = 0x0D3B
Global Const $GL_SUBPIXEL_BITS                  = 0x0D50
Global Const $GL_INDEX_BITS                     = 0x0D51
Global Const $GL_RED_BITS                       = 0x0D52
Global Const $GL_GREEN_BITS                     = 0x0D53
Global Const $GL_BLUE_BITS                      = 0x0D54
Global Const $GL_ALPHA_BITS                     = 0x0D55
Global Const $GL_DEPTH_BITS                     = 0x0D56
Global Const $GL_STENCIL_BITS                   = 0x0D57
Global Const $GL_ACCUM_RED_BITS                 = 0x0D58
Global Const $GL_ACCUM_GREEN_BITS               = 0x0D59
Global Const $GL_ACCUM_BLUE_BITS                = 0x0D5A
Global Const $GL_ACCUM_ALPHA_BITS               = 0x0D5B
Global Const $GL_NAME_STACK_DEPTH               = 0x0D70
Global Const $GL_AUTO_NORMAL                    = 0x0D80
Global Const $GL_MAP1_COLOR_4                   = 0x0D90
Global Const $GL_MAP1_INDEX                     = 0x0D91
Global Const $GL_MAP1_NORMAL                    = 0x0D92
Global Const $GL_MAP1_TEXTURE_COORD_1           = 0x0D93
Global Const $GL_MAP1_TEXTURE_COORD_2           = 0x0D94
Global Const $GL_MAP1_TEXTURE_COORD_3           = 0x0D95
Global Const $GL_MAP1_TEXTURE_COORD_4           = 0x0D96
Global Const $GL_MAP1_VERTEX_3                  = 0x0D97
Global Const $GL_MAP1_VERTEX_4                  = 0x0D98
Global Const $GL_MAP2_COLOR_4                   = 0x0DB0
Global Const $GL_MAP2_INDEX                     = 0x0DB1
Global Const $GL_MAP2_NORMAL                    = 0x0DB2
Global Const $GL_MAP2_TEXTURE_COORD_1           = 0x0DB3
Global Const $GL_MAP2_TEXTURE_COORD_2           = 0x0DB4
Global Const $GL_MAP2_TEXTURE_COORD_3           = 0x0DB5
Global Const $GL_MAP2_TEXTURE_COORD_4           = 0x0DB6
Global Const $GL_MAP2_VERTEX_3                  = 0x0DB7
Global Const $GL_MAP2_VERTEX_4                  = 0x0DB8
Global Const $GL_MAP1_GRID_DOMAIN               = 0x0DD0
Global Const $GL_MAP1_GRID_SEGMENTS             = 0x0DD1
Global Const $GL_MAP2_GRID_DOMAIN               = 0x0DD2
Global Const $GL_MAP2_GRID_SEGMENTS             = 0x0DD3
Global Const $GL_TEXTURE_1D                     = 0x0DE0
Global Const $GL_TEXTURE_2D                     = 0x0DE1
Global Const $GL_FEEDBACK_BUFFER_POINTER        = 0x0DF0
Global Const $GL_FEEDBACK_BUFFER_SIZE           = 0x0DF1
Global Const $GL_FEEDBACK_BUFFER_TYPE           = 0x0DF2
Global Const $GL_SELECTION_BUFFER_POINTER       = 0x0DF3
Global Const $GL_SELECTION_BUFFER_SIZE          = 0x0DF4
;            $GL_TEXTURE_BINDING_1D
;            $GL_TEXTURE_BINDING_2D
;            $GL_VERTEX_ARRAY
;            $GL_NORMAL_ARRAY
;            $GL_COLOR_ARRAY
;            $GL_INDEX_ARRAY
;            $GL_TEXTURE_COORD_ARRAY
;            $GL_EDGE_FLAG_ARRAY
;            $GL_VERTEX_ARRAY_SIZE
;            $GL_VERTEX_ARRAY_TYPE
;            $GL_VERTEX_ARRAY_STRIDE
;            $GL_NORMAL_ARRAY_TYPE
;            $GL_NORMAL_ARRAY_STRIDE
;            $GL_COLOR_ARRAY_SIZE
;            $GL_COLOR_ARRAY_TYPE
;            $GL_COLOR_ARRAY_STRIDE
;            $GL_INDEX_ARRAY_TYPE
;            $GL_INDEX_ARRAY_STRIDE
;            $GL_TEXTURE_COORD_ARRAY_SIZE
;            $GL_TEXTURE_COORD_ARRAY_TYPE
;            $GL_TEXTURE_COORD_ARRAY_STRIDE
;            $GL_EDGE_FLAG_ARRAY_STRIDE
;            $GL_POLYGON_OFFSET_FACTOR
;            $GL_POLYGON_OFFSET_UNITS

; GetTextureParameter
;            $GL_TEXTURE_MAG_FILTER
;            $GL_TEXTURE_MIN_FILTER
;            $GL_TEXTURE_WRAP_S
;            $GL_TEXTURE_WRAP_T
Global Const $GL_TEXTURE_WIDTH                  = 0x1000
Global Const $GL_TEXTURE_HEIGHT                 = 0x1001
Global Const $GL_TEXTURE_INTERNAL_FORMAT        = 0x1003
Global Const $GL_TEXTURE_BORDER_COLOR           = 0x1004
Global Const $GL_TEXTURE_BORDER                 = 0x1005
;            $GL_TEXTURE_RED_SIZE
;            $GL_TEXTURE_GREEN_SIZE
;            $GL_TEXTURE_BLUE_SIZE
;            $GL_TEXTURE_ALPHA_SIZE
;            $GL_TEXTURE_LUMINANCE_SIZE
;            $GL_TEXTURE_INTENSITY_SIZE
;            $GL_TEXTURE_PRIORITY
;            $GL_TEXTURE_RESIDENT

; HintMode
Global Const $GL_DONT_CARE                      = 0x1100
Global Const $GL_FASTEST                        = 0x1101
Global Const $GL_NICEST                         = 0x1102

; HintTarget
;            $GL_PERSPECTIVE_CORRECTION_HINT
;            $GL_POINT_SMOOTH_HINT
;            $GL_LINE_SMOOTH_HINT
;            $GL_POLYGON_SMOOTH_HINT
;            $GL_FOG_HINT
;            $GL_PHONG_HINT

; IndexPointerType
;            $GL_SHORT
;            $GL_INT
;            $GL_FLOAT
;            $GL_DOUBLE

; LightModelParameter
;            $GL_LIGHT_MODEL_AMBIENT
;            $GL_LIGHT_MODEL_LOCAL_VIEWER
;            $GL_LIGHT_MODEL_TWO_SIDE

; LightName
Global Const $GL_LIGHT0                         = 0x4000
Global Const $GL_LIGHT1                         = 0x4001
Global Const $GL_LIGHT2                         = 0x4002
Global Const $GL_LIGHT3                         = 0x4003
Global Const $GL_LIGHT4                         = 0x4004
Global Const $GL_LIGHT5                         = 0x4005
Global Const $GL_LIGHT6                         = 0x4006
Global Const $GL_LIGHT7                         = 0x4007

; LightParameter
Global Const $GL_AMBIENT                        = 0x1200
Global Const $GL_DIFFUSE                        = 0x1201
Global Const $GL_SPECULAR                       = 0x1202
Global Const $GL_POSITION                       = 0x1203
Global Const $GL_SPOT_DIRECTION                 = 0x1204
Global Const $GL_SPOT_EXPONENT                  = 0x1205
Global Const $GL_SPOT_CUTOFF                    = 0x1206
Global Const $GL_CONSTANT_ATTENUATION           = 0x1207
Global Const $GL_LINEAR_ATTENUATION             = 0x1208
Global Const $GL_QUADRATIC_ATTENUATION          = 0x1209

; InterleavedArrays
;            $GL_V2F
;            $GL_V3F
;            $GL_C4UB_V2F
;            $GL_C4UB_V3F
;            $GL_C3F_V3F
;            $GL_N3F_V3F
;            $GL_C4F_N3F_V3F
;            $GL_T2F_V3F
;            $GL_T4F_V4F
;            $GL_T2F_C4UB_V3F
;            $GL_T2F_C3F_V3F
;            $GL_T2F_N3F_V3F
;            $GL_T2F_C4F_N3F_V3F
;            $GL_T4F_C4F_N3F_V4F

; ListMode
Global Const $GL_COMPILE                        = 0x1300
Global Const $GL_COMPILE_AND_EXECUTE            = 0x1301

; ListNameType
;            $GL_BYTE
;            $GL_UNSIGNED_BYTE
;            $GL_SHORT
;            $GL_UNSIGNED_SHORT
;            $GL_INT
;            $GL_UNSIGNED_INT
;            $GL_FLOAT
;            $GL_2_BYTES
;            $GL_3_BYTES
;            $GL_4_BYTES

; LogicOp
Global Const $GL_CLEAR                          = 0x1500
Global Const $GL_AND                            = 0x1501
Global Const $GL_AND_REVERSE                    = 0x1502
Global Const $GL_COPY                           = 0x1503
Global Const $GL_AND_INVERTED                   = 0x1504
Global Const $GL_NOOP                           = 0x1505
Global Const $GL_XOR                            = 0x1506
Global Const $GL_OR                             = 0x1507
Global Const $GL_NOR                            = 0x1508
Global Const $GL_EQUIV                          = 0x1509
Global Const $GL_INVERT                         = 0x150A
Global Const $GL_OR_REVERSE                     = 0x150B
Global Const $GL_COPY_INVERTED                  = 0x150C
Global Const $GL_OR_INVERTED                    = 0x150D
Global Const $GL_NAND                           = 0x150E
Global Const $GL_SET                            = 0x150F

; MapTarget
;            $GL_MAP1_COLOR_4
;            $GL_MAP1_INDEX
;            $GL_MAP1_NORMAL
;            $GL_MAP1_TEXTURE_COORD_1
;            $GL_MAP1_TEXTURE_COORD_2
;            $GL_MAP1_TEXTURE_COORD_3
;            $GL_MAP1_TEXTURE_COORD_4
;            $GL_MAP1_VERTEX_3
;            $GL_MAP1_VERTEX_4
;            $GL_MAP2_COLOR_4
;            $GL_MAP2_INDEX
;            $GL_MAP2_NORMAL
;            $GL_MAP2_TEXTURE_COORD_1
;            $GL_MAP2_TEXTURE_COORD_2
;            $GL_MAP2_TEXTURE_COORD_3
;            $GL_MAP2_TEXTURE_COORD_4
;            $GL_MAP2_VERTEX_3
;            $GL_MAP2_VERTEX_4

; MaterialFace
;            $GL_FRONT
;            $GL_BACK
;            $GL_FRONT_AND_BACK

; MaterialParameter
Global Const $GL_EMISSION                       = 0x1600
Global Const $GL_SHININESS                      = 0x1601
Global Const $GL_AMBIENT_AND_DIFFUSE            = 0x1602
Global Const $GL_COLOR_INDEXES                  = 0x1603
;            $GL_AMBIENT
;            $GL_DIFFUSE
;            $GL_SPECULAR

; MatrixMode
Global Const $GL_MODELVIEW                      = 0x1700
Global Const $GL_PROJECTION                     = 0x1701
Global Const $GL_TEXTURE                        = 0x1702

; MeshMode1
;            $GL_POINT
;            $GL_LINE

; MeshMode2
;            $GL_POINT
;            $GL_LINE
;            $GL_FILL

; NormalPointerType
;            $GL_BYTE
;            $GL_SHORT
;            $GL_INT
;            $GL_FLOAT
;            $GL_DOUBLE

; PixelCopyType
Global Const $GL_COLOR                          = 0x1800
Global Const $GL_DEPTH                          = 0x1801
Global Const $GL_STENCIL                        = 0x1802

; PixelFormat
Global Const $GL_COLOR_INDEX                    = 0x1900
Global Const $GL_STENCIL_INDEX                  = 0x1901
Global Const $GL_DEPTH_COMPONENT                = 0x1902
Global Const $GL_RED                            = 0x1903
Global Const $GL_GREEN                          = 0x1904
Global Const $GL_BLUE                           = 0x1905
Global Const $GL_ALPHA                          = 0x1906
Global Const $GL_RGB                            = 0x1907
Global Const $GL_RGBA                           = 0x1908
Global Const $GL_LUMINANCE                      = 0x1909
Global Const $GL_LUMINANCE_ALPHA                = 0x190A

; PixelMap
;            $GL_PIXEL_MAP_I_TO_I
;            $GL_PIXEL_MAP_S_TO_S
;            $GL_PIXEL_MAP_I_TO_R
;            $GL_PIXEL_MAP_I_TO_G
;            $GL_PIXEL_MAP_I_TO_B
;            $GL_PIXEL_MAP_I_TO_A
;            $GL_PIXEL_MAP_R_TO_R
;            $GL_PIXEL_MAP_G_TO_G
;            $GL_PIXEL_MAP_B_TO_B
;            $GL_PIXEL_MAP_A_TO_A

; PixelStore
;            $GL_UNPACK_SWAP_BYTES
;            $GL_UNPACK_LSB_FIRST
;            $GL_UNPACK_ROW_LENGTH
;            $GL_UNPACK_SKIP_ROWS
;            $GL_UNPACK_SKIP_PIXELS
;            $GL_UNPACK_ALIGNMENT
;            $GL_PACK_SWAP_BYTES
;            $GL_PACK_LSB_FIRST
;            $GL_PACK_ROW_LENGTH
;            $GL_PACK_SKIP_ROWS
;            $GL_PACK_SKIP_PIXELS
;            $GL_PACK_ALIGNMENT

; PixelTransfer
;            $GL_MAP_COLOR
;            $GL_MAP_STENCIL
;            $GL_INDEX_SHIFT
;            $GL_INDEX_OFFSET
;            $GL_RED_SCALE
;            $GL_RED_BIAS
;            $GL_GREEN_SCALE
;            $GL_GREEN_BIAS
;            $GL_BLUE_SCALE
;            $GL_BLUE_BIAS
;            $GL_ALPHA_SCALE
;            $GL_ALPHA_BIAS
;            $GL_DEPTH_SCALE
;            $GL_DEPTH_BIAS

; PixelType
Global Const $GL_BITMAP                         = 0x1A00
;            $GL_BYTE
;            $GL_UNSIGNED_BYTE
;            $GL_SHORT
;            $GL_UNSIGNED_SHORT
;            $GL_INT
;            $GL_UNSIGNED_INT
;            $GL_FLOAT

; PolygonMode
Global Const $GL_POINT                          = 0x1B00
Global Const $GL_LINE                           = 0x1B01
Global Const $GL_FILL                           = 0x1B02

; ReadBufferMode
;            $GL_FRONT_LEFT
;            $GL_FRONT_RIGHT
;            $GL_BACK_LEFT
;            $GL_BACK_RIGHT
;            $GL_FRONT
;            $GL_BACK
;            $GL_LEFT
;            $GL_RIGHT
;            $GL_AUX0
;            $GL_AUX1
;            $GL_AUX2
;            $GL_AUX3

; RenderingMode
Global Const $GL_RENDER                         = 0x1C00
Global Const $GL_FEEDBACK                       = 0x1C01
Global Const $GL_SELECT                         = 0x1C02

; ShadingModel
Global Const $GL_FLAT                           = 0x1D00
Global Const $GL_SMOOTH                         = 0x1D01

; StencilFunction
;            $GL_NEVER
;            $GL_LESS
;            $GL_EQUAL
;            $GL_LEQUAL
;            $GL_GREATER
;            $GL_NOTEQUAL
;            $GL_GEQUAL
;            $GL_ALWAYS

; StencilOp
;            $GL_ZERO
Global Const $GL_KEEP                           = 0x1E00
Global Const $GL_REPLACE                        = 0x1E01
Global Const $GL_INCR                           = 0x1E02
Global Const $GL_DECR                           = 0x1E03
;            $GL_INVERT

; StringName
Global Const $GL_VENDOR                         = 0x1F00
Global Const $GL_RENDERER                       = 0x1F01
Global Const $GL_VERSION                        = 0x1F02
Global Const $GL_EXTENSIONS                     = 0x1F03

; TextureCoordName
Global Const $GL_S                              = 0x2000
Global Const $GL_T                              = 0x2001
Global Const $GL_R                              = 0x2002
Global Const $GL_Q                              = 0x2003

; TexCoordPointerType
;            $GL_SHORT
;            $GL_INT
;            $GL_FLOAT
;            $GL_DOUBLE

; TextureEnvMode
Global Const $GL_MODULATE                       = 0x2100
Global Const $GL_DECAL                          = 0x2101
;            $GL_BLEND
;            $GL_REPLACE

; TextureEnvParameter
Global Const $GL_TEXTURE_ENV_MODE               = 0x2200
Global Const $GL_TEXTURE_ENV_COLOR              = 0x2201

; TextureEnvTarget
Global Const $GL_TEXTURE_ENV                    = 0x2300

; TextureGenMode
Global Const $GL_EYE_LINEAR                     = 0x2400
Global Const $GL_OBJECT_LINEAR                  = 0x2401
Global Const $GL_SPHERE_MAP                     = 0x2402

; TextureGenParameter
Global Const $GL_TEXTURE_GEN_MODE               = 0x2500
Global Const $GL_OBJECT_PLANE                   = 0x2501
Global Const $GL_EYE_PLANE                      = 0x2502

; TextureMagFilter
Global Const $GL_NEAREST                        = 0x2600
Global Const $GL_LINEAR                         = 0x2601

; TextureMinFilter
;            $GL_NEAREST
;            $GL_LINEAR
Global Const $GL_NEAREST_MIPMAP_NEAREST         = 0x2700
Global Const $GL_LINEAR_MIPMAP_NEAREST          = 0x2701
Global Const $GL_NEAREST_MIPMAP_LINEAR          = 0x2702
Global Const $GL_LINEAR_MIPMAP_LINEAR           = 0x2703

; TextureParameterName
Global Const $GL_TEXTURE_MAG_FILTER             = 0x2800
Global Const $GL_TEXTURE_MIN_FILTER             = 0x2801
Global Const $GL_TEXTURE_WRAP_S                 = 0x2802
Global Const $GL_TEXTURE_WRAP_T                 = 0x2803
;            $GL_TEXTURE_BORDER_COLOR
;            $GL_TEXTURE_PRIORITY

; TextureTarget
;            $GL_TEXTURE_1D
;            $GL_TEXTURE_2D
;            $GL_PROXY_TEXTURE_1D
;            $GL_PROXY_TEXTURE_2D

; TextureWrapMode
Global Const $GL_CLAMP                          = 0x2900
Global Const $GL_REPEAT                         = 0x2901

; VertexPointerType
;            $GL_SHORT
;            $GL_INT
;            $GL_FLOAT
;            $GL_DOUBLE

; ClientAttribMask
Global Const $GL_CLIENT_PIXEL_STORE_BIT         = 0x00000001
Global Const $GL_CLIENT_VERTEX_ARRAY_BIT        = 0x00000002
Global Const $GL_CLIENT_ALL_ATTRIB_BITS         = 0xffffffff

; polygon_offset
Global Const $GL_POLYGON_OFFSET_FACTOR          = 0x8038
Global Const $GL_POLYGON_OFFSET_UNITS           = 0x2A00
Global Const $GL_POLYGON_OFFSET_POINT           = 0x2A01
Global Const $GL_POLYGON_OFFSET_LINE            = 0x2A02
Global Const $GL_POLYGON_OFFSET_FILL            = 0x8037

; texture
Global Const $GL_ALPHA4                         = 0x803B
Global Const $GL_ALPHA8                         = 0x803C
Global Const $GL_ALPHA12                        = 0x803D
Global Const $GL_ALPHA16                        = 0x803E
Global Const $GL_LUMINANCE4                     = 0x803F
Global Const $GL_LUMINANCE8                     = 0x8040
Global Const $GL_LUMINANCE12                    = 0x8041
Global Const $GL_LUMINANCE16                    = 0x8042
Global Const $GL_LUMINANCE4_ALPHA4              = 0x8043
Global Const $GL_LUMINANCE6_ALPHA2              = 0x8044
Global Const $GL_LUMINANCE8_ALPHA8              = 0x8045
Global Const $GL_LUMINANCE12_ALPHA4             = 0x8046
Global Const $GL_LUMINANCE12_ALPHA12            = 0x8047
Global Const $GL_LUMINANCE16_ALPHA16            = 0x8048
Global Const $GL_INTENSITY                      = 0x8049
Global Const $GL_INTENSITY4                     = 0x804A
Global Const $GL_INTENSITY8                     = 0x804B
Global Const $GL_INTENSITY12                    = 0x804C
Global Const $GL_INTENSITY16                    = 0x804D
Global Const $GL_R3_G3_B2                       = 0x2A10
Global Const $GL_RGB4                           = 0x804F
Global Const $GL_RGB5                           = 0x8050
Global Const $GL_RGB8                           = 0x8051
Global Const $GL_RGB10                          = 0x8052
Global Const $GL_RGB12                          = 0x8053
Global Const $GL_RGB16                          = 0x8054
Global Const $GL_RGBA2                          = 0x8055
Global Const $GL_RGBA4                          = 0x8056
Global Const $GL_RGB5_A1                        = 0x8057
Global Const $GL_RGBA8                          = 0x8058
Global Const $GL_RGB10_A2                       = 0x8059
Global Const $GL_RGBA12                         = 0x805A
Global Const $GL_RGBA16                         = 0x805B
Global Const $GL_TEXTURE_RED_SIZE               = 0x805C
Global Const $GL_TEXTURE_GREEN_SIZE             = 0x805D
Global Const $GL_TEXTURE_BLUE_SIZE              = 0x805E
Global Const $GL_TEXTURE_ALPHA_SIZE             = 0x805F
Global Const $GL_TEXTURE_LUMINANCE_SIZE         = 0x8060
Global Const $GL_TEXTURE_INTENSITY_SIZE         = 0x8061
Global Const $GL_PROXY_TEXTURE_1D               = 0x8063
Global Const $GL_PROXY_TEXTURE_2D               = 0x8064

; texture_object
Global Const $GL_TEXTURE_PRIORITY               = 0x8066
Global Const $GL_TEXTURE_RESIDENT               = 0x8067
Global Const $GL_TEXTURE_BINDING_1D             = 0x8068
Global Const $GL_TEXTURE_BINDING_2D             = 0x8069

; vertex_array
Global Const $GL_VERTEX_ARRAY                   = 0x8074
Global Const $GL_NORMAL_ARRAY                   = 0x8075
Global Const $GL_COLOR_ARRAY                    = 0x8076
Global Const $GL_INDEX_ARRAY                    = 0x8077
Global Const $GL_TEXTURE_COORD_ARRAY            = 0x8078
Global Const $GL_EDGE_FLAG_ARRAY                = 0x8079
Global Const $GL_VERTEX_ARRAY_SIZE              = 0x807A
Global Const $GL_VERTEX_ARRAY_TYPE              = 0x807B
Global Const $GL_VERTEX_ARRAY_STRIDE            = 0x807C
Global Const $GL_NORMAL_ARRAY_TYPE              = 0x807E
Global Const $GL_NORMAL_ARRAY_STRIDE            = 0x807F
Global Const $GL_COLOR_ARRAY_SIZE               = 0x8081
Global Const $GL_COLOR_ARRAY_TYPE               = 0x8082
Global Const $GL_COLOR_ARRAY_STRIDE             = 0x8083
Global Const $GL_INDEX_ARRAY_TYPE               = 0x8085
Global Const $GL_INDEX_ARRAY_STRIDE             = 0x8086
Global Const $GL_TEXTURE_COORD_ARRAY_SIZE       = 0x8088
Global Const $GL_TEXTURE_COORD_ARRAY_TYPE       = 0x8089
Global Const $GL_TEXTURE_COORD_ARRAY_STRIDE     = 0x808A
Global Const $GL_EDGE_FLAG_ARRAY_STRIDE         = 0x808C
Global Const $GL_VERTEX_ARRAY_POINTER           = 0x808E
Global Const $GL_NORMAL_ARRAY_POINTER           = 0x808F
Global Const $GL_COLOR_ARRAY_POINTER            = 0x8090
Global Const $GL_INDEX_ARRAY_POINTER            = 0x8091
Global Const $GL_TEXTURE_COORD_ARRAY_POINTER    = 0x8092
Global Const $GL_EDGE_FLAG_ARRAY_POINTER        = 0x8093
Global Const $GL_V2F                            = 0x2A20
Global Const $GL_V3F                            = 0x2A21
Global Const $GL_C4UB_V2F                       = 0x2A22
Global Const $GL_C4UB_V3F                       = 0x2A23
Global Const $GL_C3F_V3F                        = 0x2A24
Global Const $GL_N3F_V3F                        = 0x2A25
Global Const $GL_C4F_N3F_V3F                    = 0x2A26
Global Const $GL_T2F_V3F                        = 0x2A27
Global Const $GL_T4F_V4F                        = 0x2A28
Global Const $GL_T2F_C4UB_V3F                   = 0x2A29
Global Const $GL_T2F_C3F_V3F                    = 0x2A2A
Global Const $GL_T2F_N3F_V3F                    = 0x2A2B
Global Const $GL_T2F_C4F_N3F_V3F                = 0x2A2C
Global Const $GL_T4F_C4F_N3F_V4F                = 0x2A2D

; Extensions
Global Const $GL_EXT_vertex_array               = 1
Global Const $GL_EXT_bgra                       = 1
Global Const $GL_EXT_paletted_texture           = 1
Global Const $GL_WIN_swap_hint                  = 1
Global Const $GL_WIN_draw_range_elements        = 1
;Global Const $GL_WIN_phong_shading             = 1
;Global Const $GL_WIN_specular_fog              = 1

; EXT_vertex_array
Global Const $GL_VERTEX_ARRAY_EXT               = 0x8074
Global Const $GL_NORMAL_ARRAY_EXT               = 0x8075
Global Const $GL_COLOR_ARRAY_EXT                = 0x8076
Global Const $GL_INDEX_ARRAY_EXT                = 0x8077
Global Const $GL_TEXTURE_COORD_ARRAY_EXT        = 0x8078
Global Const $GL_EDGE_FLAG_ARRAY_EXT            = 0x8079
Global Const $GL_VERTEX_ARRAY_SIZE_EXT          = 0x807A
Global Const $GL_VERTEX_ARRAY_TYPE_EXT          = 0x807B
Global Const $GL_VERTEX_ARRAY_STRIDE_EXT        = 0x807C
Global Const $GL_VERTEX_ARRAY_COUNT_EXT         = 0x807D
Global Const $GL_NORMAL_ARRAY_TYPE_EXT          = 0x807E
Global Const $GL_NORMAL_ARRAY_STRIDE_EXT        = 0x807F
Global Const $GL_NORMAL_ARRAY_COUNT_EXT         = 0x8080
Global Const $GL_COLOR_ARRAY_SIZE_EXT           = 0x8081
Global Const $GL_COLOR_ARRAY_TYPE_EXT           = 0x8082
Global Const $GL_COLOR_ARRAY_STRIDE_EXT         = 0x8083
Global Const $GL_COLOR_ARRAY_COUNT_EXT          = 0x8084
Global Const $GL_INDEX_ARRAY_TYPE_EXT           = 0x8085
Global Const $GL_INDEX_ARRAY_STRIDE_EXT         = 0x8086
Global Const $GL_INDEX_ARRAY_COUNT_EXT          = 0x8087
Global Const $GL_TEXTURE_COORD_ARRAY_SIZE_EXT   = 0x8088
Global Const $GL_TEXTURE_COORD_ARRAY_TYPE_EXT   = 0x8089
Global Const $GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A
Global Const $GL_TEXTURE_COORD_ARRAY_COUNT_EXT  = 0x808B
Global Const $GL_EDGE_FLAG_ARRAY_STRIDE_EXT     = 0x808C
Global Const $GL_EDGE_FLAG_ARRAY_COUNT_EXT      = 0x808D
Global Const $GL_VERTEX_ARRAY_POINTER_EXT       = 0x808E
Global Const $GL_NORMAL_ARRAY_POINTER_EXT       = 0x808F
Global Const $GL_COLOR_ARRAY_POINTER_EXT        = 0x8090
Global Const $GL_INDEX_ARRAY_POINTER_EXT        = 0x8091
Global Const $GL_TEXTURE_COORD_ARRAY_POINTER_EXT= 0x8092
Global Const $GL_EDGE_FLAG_ARRAY_POINTER_EXT    = 0x8093
Global Const $GL_DOUBLE_EXT                     = $GL_DOUBLE

; EXT_bgra
Global Const $GL_BGR_EXT                        = 0x80E0
Global Const $GL_BGRA_EXT                       = 0x80E1

; EXT_paletted_texture

; These must match the GL_COLOR_TABLE_*_SGI enumerants
Global Const $GL_COLOR_TABLE_FORMAT_EXT         = 0x80D8
Global Const $GL_COLOR_TABLE_WIDTH_EXT          = 0x80D9
Global Const $GL_COLOR_TABLE_RED_SIZE_EXT       = 0x80DA
Global Const $GL_COLOR_TABLE_GREEN_SIZE_EXT     = 0x80DB
Global Const $GL_COLOR_TABLE_BLUE_SIZE_EXT      = 0x80DC
Global Const $GL_COLOR_TABLE_ALPHA_SIZE_EXT     = 0x80DD
Global Const $GL_COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE
Global Const $GL_COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF

Global Const $GL_COLOR_INDEX1_EXT               = 0x80E2
Global Const $GL_COLOR_INDEX2_EXT               = 0x80E3
Global Const $GL_COLOR_INDEX4_EXT               = 0x80E4
Global Const $GL_COLOR_INDEX8_EXT               = 0x80E5
Global Const $GL_COLOR_INDEX12_EXT              = 0x80E6
Global Const $GL_COLOR_INDEX16_EXT              = 0x80E7

; WIN_draw_range_elements
Global Const $GL_MAX_ELEMENTS_VERTICES_WIN      = 0x80E8
Global Const $GL_MAX_ELEMENTS_INDICES_WIN       = 0x80E9

; WIN_phong_shading
Global Const $GL_PHONG_WIN                      = 0x80EA 
Global Const $GL_PHONG_HINT_WIN                 = 0x80EB 

; WIN_specular_fog
Global Const $GL_FOG_SPECULAR_TEXTURE_WIN       = 0x80EC

; For compatibility with OpenGL v1.0
Global Const $GL_LOGIC_OP                       = $GL_INDEX_LOGIC_OP
Global Const $GL_TEXTURE_COMPONENTS             = $GL_TEXTURE_INTERNAL_FORMAT

; ------------------- OpenGL Utility Library constants --------------------

Global Const $GLU_VERSION_1_1                   = 1
Global Const $GLU_VERSION_1_2                   = 1

; Errors: (return value 0 = no error)
Global Const $GLU_INVALID_ENUM                  = 100900
Global Const $GLU_INVALID_VALUE                 = 100901
Global Const $GLU_OUT_OF_MEMORY                 = 100902
Global Const $GLU_INCOMPATIBLE_GL_VERSION       = 100903

; StringName
Global Const $GLU_VERSION                       = 100800
Global Const $GLU_EXTENSIONS                    = 100801

; Boolean
Global Const $GLU_TRUE                          = $GL_TRUE
Global Const $GLU_FALSE                         = $GL_FALSE

; ****           Quadric constants               ****

; QuadricNormal
Global Const $GLU_SMOOTH                        = 100000
Global Const $GLU_FLAT                          = 100001
Global Const $GLU_NONE                          = 100002

; QuadricDrawStyle
Global Const $GLU_POINT                         = 100010
Global Const $GLU_LINE                          = 100011
Global Const $GLU_FILL                          = 100012
Global Const $GLU_SILHOUETTE                    = 100013

; QuadricOrientation
Global Const $GLU_OUTSIDE                       = 100020
Global Const $GLU_INSIDE                        = 100021

; Callback types:
; GLU_ERROR                                     = 100103

; ****           Tesselation constants           ****

Global Const $GLU_TESS_MAX_COORD                = 1.0

; TessProperty
Global Const $GLU_TESS_WINDING_RULE             = 100140
Global Const $GLU_TESS_BOUNDARY_ONLY            = 100141
Global Const $GLU_TESS_TOLERANCE                = 100142

; TessWinding
Global Const $GLU_TESS_WINDING_ODD              = 100130
Global Const $GLU_TESS_WINDING_NONZERO          = 100131
Global Const $GLU_TESS_WINDING_POSITIVE         = 100132
Global Const $GLU_TESS_WINDING_NEGATIVE         = 100133
Global Const $GLU_TESS_WINDING_ABS_GEQ_TWO      = 100134

; TessCallback
Global Const $GLU_TESS_BEGIN                    = 100100  ; void (CALLBACK*)(GLenum    type)
Global Const $GLU_TESS_VERTEX                   = 100101  ; void (CALLBACK*)(void      *data)
Global Const $GLU_TESS_END                      = 100102  ; void (CALLBACK*)(void)
Global Const $GLU_TESS_ERROR                    = 100103  ; void (CALLBACK*)(GLenum    errno)
Global Const $GLU_TESS_EDGE_FLAG                = 100104  ; void (CALLBACK*)(GLboolean boundaryEdge)
Global Const $GLU_TESS_COMBINE                  = 100105  ; void (CALLBACK*)(GLdouble  coords[3],
                                                          ;                  void      *data[4],
                                                          ;                  GLfloat   weight[4],
                                                          ;                  void      **dataOut)
Global Const $GLU_TESS_BEGIN_DATA               = 100106  ; void (CALLBACK*)(GLenum    type,  
                                                          ;                  void      *polygon_data)
Global Const $GLU_TESS_VERTEX_DATA              = 100107  ; void (CALLBACK*)(void      *data, 
                                                          ;                  void      *polygon_data)
Global Const $GLU_TESS_END_DATA                 = 100108  ; void (CALLBACK*)(void      *polygon_data)
Global Const $GLU_TESS_ERROR_DATA               = 100109  ; void (CALLBACK*)(GLenum    errno, 
                                                          ;                  void      *polygon_data)
Global Const $GLU_TESS_EDGE_FLAG_DATA           = 100110  ; void (CALLBACK*)(GLboolean boundaryEdge,
                                                          ;                  void      *polygon_data)
Global Const $GLU_TESS_COMBINE_DATA             = 100111  ; void (CALLBACK*)(GLdouble  coords[3],
                                                          ;                  void      *data[4],
                                                          ;                  GLfloat   weight[4],
                                                          ;                  void      **dataOut,
                                                          ;                  void      *polygon_data)

; TessError
Global Const $GLU_TESS_ERROR1                   = 100151
Global Const $GLU_TESS_ERROR2                   = 100152
Global Const $GLU_TESS_ERROR3                   = 100153
Global Const $GLU_TESS_ERROR4                   = 100154
Global Const $GLU_TESS_ERROR5                   = 100155
Global Const $GLU_TESS_ERROR6                   = 100156
Global Const $GLU_TESS_ERROR7                   = 100157
Global Const $GLU_TESS_ERROR8                   = 100158

Global Const $GLU_TESS_MISSING_BEGIN_POLYGON    = $GLU_TESS_ERROR1
Global Const $GLU_TESS_MISSING_BEGIN_CONTOUR    = $GLU_TESS_ERROR2
Global Const $GLU_TESS_MISSING_END_POLYGON      = $GLU_TESS_ERROR3
Global Const $GLU_TESS_MISSING_END_CONTOUR      = $GLU_TESS_ERROR4
Global Const $GLU_TESS_COORD_TOO_LARGE          = $GLU_TESS_ERROR5
Global Const $GLU_TESS_NEED_COMBINE_CALLBACK    = $GLU_TESS_ERROR6

; ****           NURBS constants                 ****

; NurbsProperty
Global Const $GLU_AUTO_LOAD_MATRIX              = 100200
Global Const $GLU_CULLING                       = 100201
Global Const $GLU_SAMPLING_TOLERANCE            = 100203
Global Const $GLU_DISPLAY_MODE                  = 100204
Global Const $GLU_PARAMETRIC_TOLERANCE          = 100202
Global Const $GLU_SAMPLING_METHOD               = 100205
Global Const $GLU_U_STEP                        = 100206
Global Const $GLU_V_STEP                        = 100207

; NurbsSampling
Global Const $GLU_PATH_LENGTH                   = 100215
Global Const $GLU_PARAMETRIC_ERROR              = 100216
Global Const $GLU_DOMAIN_DISTANCE               = 100217


; NurbsTrim
Global Const $GLU_MAP1_TRIM_2                   = 100210
Global Const $GLU_MAP1_TRIM_3                   = 100211

; NurbsDisplay
; GLU_FILL                                      = 100012
Global Const $GLU_OUTLINE_POLYGON               = 100240
Global Const $GLU_OUTLINE_PATCH                 = 100241

; NurbsCallback
; GLU_ERROR                                     = 100103

; NurbsErrors
Global Const $GLU_NURBS_ERROR1                  = 100251
Global Const $GLU_NURBS_ERROR2                  = 100252
Global Const $GLU_NURBS_ERROR3                  = 100253
Global Const $GLU_NURBS_ERROR4                  = 100254
Global Const $GLU_NURBS_ERROR5                  = 100255
Global Const $GLU_NURBS_ERROR6                  = 100256
Global Const $GLU_NURBS_ERROR7                  = 100257
Global Const $GLU_NURBS_ERROR8                  = 100258
Global Const $GLU_NURBS_ERROR9                  = 100259
Global Const $GLU_NURBS_ERROR10                 = 100260
Global Const $GLU_NURBS_ERROR11                 = 100261
Global Const $GLU_NURBS_ERROR12                 = 100262
Global Const $GLU_NURBS_ERROR13                 = 100263
Global Const $GLU_NURBS_ERROR14                 = 100264
Global Const $GLU_NURBS_ERROR15                 = 100265
Global Const $GLU_NURBS_ERROR16                 = 100266
Global Const $GLU_NURBS_ERROR17                 = 100267
Global Const $GLU_NURBS_ERROR18                 = 100268
Global Const $GLU_NURBS_ERROR19                 = 100269
Global Const $GLU_NURBS_ERROR20                 = 100270
Global Const $GLU_NURBS_ERROR21                 = 100271
Global Const $GLU_NURBS_ERROR22                 = 100272
Global Const $GLU_NURBS_ERROR23                 = 100273
Global Const $GLU_NURBS_ERROR24                 = 100274
Global Const $GLU_NURBS_ERROR25                 = 100275
Global Const $GLU_NURBS_ERROR26                 = 100276
Global Const $GLU_NURBS_ERROR27                 = 100277
Global Const $GLU_NURBS_ERROR28                 = 100278
Global Const $GLU_NURBS_ERROR29                 = 100279
Global Const $GLU_NURBS_ERROR30                 = 100280
Global Const $GLU_NURBS_ERROR31                 = 100281
Global Const $GLU_NURBS_ERROR32                 = 100282
Global Const $GLU_NURBS_ERROR33                 = 100283
Global Const $GLU_NURBS_ERROR34                 = 100284
Global Const $GLU_NURBS_ERROR35                 = 100285
Global Const $GLU_NURBS_ERROR36                 = 100286
Global Const $GLU_NURBS_ERROR37                 = 100287

; ****           Backwards compatibility for old tesselator           ****

; Contours types -- obsolete!
Global Const $GLU_CW                            = 100120
Global Const $GLU_CCW                           = 100121
Global Const $GLU_INTERIOR                      = 100122
Global Const $GLU_EXTERIOR                      = 100123
Global Const $GLU_UNKNOWN                       = 100124

; Names without "TESS_" prefix
Global Const $GLU_BEGIN                         = $GLU_TESS_BEGIN
Global Const $GLU_VERTEX                        = $GLU_TESS_VERTEX
Global Const $GLU_END                           = $GLU_TESS_END
Global Const $GLU_ERROR                         = $GLU_TESS_ERROR
Global Const $GLU_EDGE_FLAG                     = $GLU_TESS_EDGE_FLAG

; ----------------------------- GL_VERSION_1_2 ----------------------------

Global Const $GL_VERSION_1_2 = 1

Global Const $GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12
Global Const $GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13
Global Const $GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22
Global Const $GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23
Global Const $GL_UNSIGNED_BYTE_3_3_2 = 0x8032
Global Const $GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033
Global Const $GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034
Global Const $GL_UNSIGNED_INT_8_8_8_8 = 0x8035
Global Const $GL_UNSIGNED_INT_10_10_10_2 = 0x8036
Global Const $GL_RESCALE_NORMAL = 0x803A
Global Const $GL_TEXTURE_BINDING_3D = 0x806A
Global Const $GL_PACK_SKIP_IMAGES = 0x806B
Global Const $GL_PACK_IMAGE_HEIGHT = 0x806C
Global Const $GL_UNPACK_SKIP_IMAGES = 0x806D
Global Const $GL_UNPACK_IMAGE_HEIGHT = 0x806E
Global Const $GL_TEXTURE_3D = 0x806F
Global Const $GL_PROXY_TEXTURE_3D = 0x8070
Global Const $GL_TEXTURE_DEPTH = 0x8071
Global Const $GL_TEXTURE_WRAP_R = 0x8072
Global Const $GL_MAX_3D_TEXTURE_SIZE = 0x8073
Global Const $GL_BGR = 0x80E0
Global Const $GL_BGRA = 0x80E1
Global Const $GL_MAX_ELEMENTS_VERTICES = 0x80E8
Global Const $GL_MAX_ELEMENTS_INDICES = 0x80E9
Global Const $GL_CLAMP_TO_EDGE = 0x812F
Global Const $GL_TEXTURE_MIN_LOD = 0x813A
Global Const $GL_TEXTURE_MAX_LOD = 0x813B
Global Const $GL_TEXTURE_BASE_LEVEL = 0x813C
Global Const $GL_TEXTURE_MAX_LEVEL = 0x813D
Global Const $GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8
Global Const $GL_SINGLE_COLOR = 0x81F9
Global Const $GL_SEPARATE_SPECULAR_COLOR = 0x81FA
Global Const $GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362
Global Const $GL_UNSIGNED_SHORT_5_6_5 = 0x8363
Global Const $GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364
Global Const $GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365
Global Const $GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366
Global Const $GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367
Global Const $GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368
Global Const $GL_ALIASED_POINT_SIZE_RANGE = 0x846D
Global Const $GL_ALIASED_LINE_WIDTH_RANGE = 0x846E

; ---------------------------- GL_VERSION_1_2_1 ---------------------------

Global Const $GL_VERSION_1_2_1 = 1

; ----------------------------- GL_VERSION_1_3 ----------------------------

Global Const $GL_VERSION_1_3 = 1

Global Const $GL_MULTISAMPLE = 0x809D
Global Const $GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E
Global Const $GL_SAMPLE_ALPHA_TO_ONE = 0x809F
Global Const $GL_SAMPLE_COVERAGE = 0x80A0
Global Const $GL_SAMPLE_BUFFERS = 0x80A8
Global Const $GL_SAMPLES = 0x80A9
Global Const $GL_SAMPLE_COVERAGE_VALUE = 0x80AA
Global Const $GL_SAMPLE_COVERAGE_INVERT = 0x80AB
Global Const $GL_CLAMP_TO_BORDER = 0x812D
Global Const $GL_TEXTURE0 = 0x84C0
Global Const $GL_TEXTURE1 = 0x84C1
Global Const $GL_TEXTURE2 = 0x84C2
Global Const $GL_TEXTURE3 = 0x84C3
Global Const $GL_TEXTURE4 = 0x84C4
Global Const $GL_TEXTURE5 = 0x84C5
Global Const $GL_TEXTURE6 = 0x84C6
Global Const $GL_TEXTURE7 = 0x84C7
Global Const $GL_TEXTURE8 = 0x84C8
Global Const $GL_TEXTURE9 = 0x84C9
Global Const $GL_TEXTURE10 = 0x84CA
Global Const $GL_TEXTURE11 = 0x84CB
Global Const $GL_TEXTURE12 = 0x84CC
Global Const $GL_TEXTURE13 = 0x84CD
Global Const $GL_TEXTURE14 = 0x84CE
Global Const $GL_TEXTURE15 = 0x84CF
Global Const $GL_TEXTURE16 = 0x84D0
Global Const $GL_TEXTURE17 = 0x84D1
Global Const $GL_TEXTURE18 = 0x84D2
Global Const $GL_TEXTURE19 = 0x84D3
Global Const $GL_TEXTURE20 = 0x84D4
Global Const $GL_TEXTURE21 = 0x84D5
Global Const $GL_TEXTURE22 = 0x84D6
Global Const $GL_TEXTURE23 = 0x84D7
Global Const $GL_TEXTURE24 = 0x84D8
Global Const $GL_TEXTURE25 = 0x84D9
Global Const $GL_TEXTURE26 = 0x84DA
Global Const $GL_TEXTURE27 = 0x84DB
Global Const $GL_TEXTURE28 = 0x84DC
Global Const $GL_TEXTURE29 = 0x84DD
Global Const $GL_TEXTURE30 = 0x84DE
Global Const $GL_TEXTURE31 = 0x84DF
Global Const $GL_ACTIVE_TEXTURE = 0x84E0
Global Const $GL_CLIENT_ACTIVE_TEXTURE = 0x84E1
Global Const $GL_MAX_TEXTURE_UNITS = 0x84E2
Global Const $GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3
Global Const $GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4
Global Const $GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5
Global Const $GL_TRANSPOSE_COLOR_MATRIX = 0x84E6
Global Const $GL_SUBTRACT = 0x84E7
Global Const $GL_COMPRESSED_ALPHA = 0x84E9
Global Const $GL_COMPRESSED_LUMINANCE = 0x84EA
Global Const $GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB
Global Const $GL_COMPRESSED_INTENSITY = 0x84EC
Global Const $GL_COMPRESSED_RGB = 0x84ED
Global Const $GL_COMPRESSED_RGBA = 0x84EE
Global Const $GL_TEXTURE_COMPRESSION_HINT = 0x84EF
Global Const $GL_NORMAL_MAP = 0x8511
Global Const $GL_REFLECTION_MAP = 0x8512
Global Const $GL_TEXTURE_CUBE_MAP = 0x8513
Global Const $GL_TEXTURE_BINDING_CUBE_MAP = 0x8514
Global Const $GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
Global Const $GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
Global Const $GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
Global Const $GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
Global Const $GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
Global Const $GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A
Global Const $GL_PROXY_TEXTURE_CUBE_MAP = 0x851B
Global Const $GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C
Global Const $GL_COMBINE = 0x8570
Global Const $GL_COMBINE_RGB = 0x8571
Global Const $GL_COMBINE_ALPHA = 0x8572
Global Const $GL_RGB_SCALE = 0x8573
Global Const $GL_ADD_SIGNED = 0x8574
Global Const $GL_INTERPOLATE = 0x8575
Global Const $GL_CONSTANT = 0x8576
Global Const $GL_PRIMARY_COLOR = 0x8577
Global Const $GL_PREVIOUS = 0x8578
Global Const $GL_SOURCE0_RGB = 0x8580
Global Const $GL_SOURCE1_RGB = 0x8581
Global Const $GL_SOURCE2_RGB = 0x8582
Global Const $GL_SOURCE0_ALPHA = 0x8588
Global Const $GL_SOURCE1_ALPHA = 0x8589
Global Const $GL_SOURCE2_ALPHA = 0x858A
Global Const $GL_OPERAND0_RGB = 0x8590
Global Const $GL_OPERAND1_RGB = 0x8591
Global Const $GL_OPERAND2_RGB = 0x8592
Global Const $GL_OPERAND0_ALPHA = 0x8598
Global Const $GL_OPERAND1_ALPHA = 0x8599
Global Const $GL_OPERAND2_ALPHA = 0x859A
Global Const $GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0
Global Const $GL_TEXTURE_COMPRESSED = 0x86A1
Global Const $GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2
Global Const $GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3
Global Const $GL_DOT3_RGB = 0x86AE
Global Const $GL_DOT3_RGBA = 0x86AF
Global Const $GL_MULTISAMPLE_BIT = 0x20000000

; ----------------------------- GL_VERSION_1_4 ----------------------------

Global Const $GL_VERSION_1_4 = 1

Global Const $GL_BLEND_DST_RGB = 0x80C8
Global Const $GL_BLEND_SRC_RGB = 0x80C9
Global Const $GL_BLEND_DST_ALPHA = 0x80CA
Global Const $GL_BLEND_SRC_ALPHA = 0x80CB
Global Const $GL_POINT_SIZE_MIN = 0x8126
Global Const $GL_POINT_SIZE_MAX = 0x8127
Global Const $GL_POINT_FADE_THRESHOLD_SIZE = 0x8128
Global Const $GL_POINT_DISTANCE_ATTENUATION = 0x8129
Global Const $GL_GENERATE_MIPMAP = 0x8191
Global Const $GL_GENERATE_MIPMAP_HINT = 0x8192
Global Const $GL_DEPTH_COMPONENT16 = 0x81A5
Global Const $GL_DEPTH_COMPONENT24 = 0x81A6
Global Const $GL_DEPTH_COMPONENT32 = 0x81A7
Global Const $GL_MIRRORED_REPEAT = 0x8370
Global Const $GL_FOG_COORDINATE_SOURCE = 0x8450
Global Const $GL_FOG_COORDINATE = 0x8451
Global Const $GL_FRAGMENT_DEPTH = 0x8452
Global Const $GL_CURRENT_FOG_COORDINATE = 0x8453
Global Const $GL_FOG_COORDINATE_ARRAY_TYPE = 0x8454
Global Const $GL_FOG_COORDINATE_ARRAY_STRIDE = 0x8455
Global Const $GL_FOG_COORDINATE_ARRAY_POINTER = 0x8456
Global Const $GL_FOG_COORDINATE_ARRAY = 0x8457
Global Const $GL_COLOR_SUM = 0x8458
Global Const $GL_CURRENT_SECONDARY_COLOR = 0x8459
Global Const $GL_SECONDARY_COLOR_ARRAY_SIZE = 0x845A
Global Const $GL_SECONDARY_COLOR_ARRAY_TYPE = 0x845B
Global Const $GL_SECONDARY_COLOR_ARRAY_STRIDE = 0x845C
Global Const $GL_SECONDARY_COLOR_ARRAY_POINTER = 0x845D
Global Const $GL_SECONDARY_COLOR_ARRAY = 0x845E
Global Const $GL_MAX_TEXTURE_LOD_BIAS = 0x84FD
Global Const $GL_TEXTURE_FILTER_CONTROL = 0x8500
Global Const $GL_TEXTURE_LOD_BIAS = 0x8501
Global Const $GL_INCR_WRAP = 0x8507
Global Const $GL_DECR_WRAP = 0x8508
Global Const $GL_TEXTURE_DEPTH_SIZE = 0x884A
Global Const $GL_DEPTH_TEXTURE_MODE = 0x884B
Global Const $GL_TEXTURE_COMPARE_MODE = 0x884C
Global Const $GL_TEXTURE_COMPARE_FUNC = 0x884D
Global Const $GL_COMPARE_R_TO_TEXTURE = 0x884E

; ----------------------------- GL_VERSION_1_5 ----------------------------

Global Const $GL_VERSION_1_5 = 1

Global Const $GL_FOG_COORD_SRC = 0x8450
Global Const $GL_FOG_COORD = 0x8451
Global Const $GL_FOG_COORD_ARRAY = 0x8457
Global Const $GL_SRC0_RGB = 0x8580
Global Const $GL_FOG_COORD_ARRAY_POINTER = 0x8456
Global Const $GL_FOG_COORD_ARRAY_TYPE = 0x8454
Global Const $GL_SRC1_ALPHA = 0x8589
Global Const $GL_CURRENT_FOG_COORD = 0x8453
Global Const $GL_FOG_COORD_ARRAY_STRIDE = 0x8455
Global Const $GL_SRC0_ALPHA = 0x8588
Global Const $GL_SRC1_RGB = 0x8581
Global Const $GL_FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D
Global Const $GL_SRC2_ALPHA = 0x858A
Global Const $GL_SRC2_RGB = 0x8582
Global Const $GL_BUFFER_SIZE = 0x8764
Global Const $GL_BUFFER_USAGE = 0x8765
Global Const $GL_QUERY_COUNTER_BITS = 0x8864
Global Const $GL_CURRENT_QUERY = 0x8865
Global Const $GL_QUERY_RESULT = 0x8866
Global Const $GL_QUERY_RESULT_AVAILABLE = 0x8867
Global Const $GL_ARRAY_BUFFER = 0x8892
Global Const $GL_ELEMENT_ARRAY_BUFFER = 0x8893
Global Const $GL_ARRAY_BUFFER_BINDING = 0x8894
Global Const $GL_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895
Global Const $GL_VERTEX_ARRAY_BUFFER_BINDING = 0x8896
Global Const $GL_NORMAL_ARRAY_BUFFER_BINDING = 0x8897
Global Const $GL_COLOR_ARRAY_BUFFER_BINDING = 0x8898
Global Const $GL_INDEX_ARRAY_BUFFER_BINDING = 0x8899
Global Const $GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A
Global Const $GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B
Global Const $GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C
Global Const $GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D
Global Const $GL_WEIGHT_ARRAY_BUFFER_BINDING = 0x889E
Global Const $GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F
Global Const $GL_READ_ONLY = 0x88B8
Global Const $GL_WRITE_ONLY = 0x88B9
Global Const $GL_READ_WRITE = 0x88BA
Global Const $GL_BUFFER_ACCESS = 0x88BB
Global Const $GL_BUFFER_MAPPED = 0x88BC
Global Const $GL_BUFFER_MAP_POINTER = 0x88BD
Global Const $GL_STREAM_DRAW = 0x88E0
Global Const $GL_STREAM_READ = 0x88E1
Global Const $GL_STREAM_COPY = 0x88E2
Global Const $GL_STATIC_DRAW = 0x88E4
Global Const $GL_STATIC_READ = 0x88E5
Global Const $GL_STATIC_COPY = 0x88E6
Global Const $GL_DYNAMIC_DRAW = 0x88E8
Global Const $GL_DYNAMIC_READ = 0x88E9
Global Const $GL_DYNAMIC_COPY = 0x88EA
Global Const $GL_SAMPLES_PASSED = 0x8914

; ----------------------------- GL_VERSION_2_0 ----------------------------

Global Const $GL_VERSION_2_0 = 1

Global Const $GL_BLEND_EQUATION_RGB = 0x8009
Global Const $GL_VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622
Global Const $GL_VERTEX_ATTRIB_ARRAY_SIZE = 0x8623
Global Const $GL_VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624
Global Const $GL_VERTEX_ATTRIB_ARRAY_TYPE = 0x8625
Global Const $GL_CURRENT_VERTEX_ATTRIB = 0x8626
Global Const $GL_VERTEX_PROGRAM_POINT_SIZE = 0x8642
Global Const $GL_VERTEX_PROGRAM_TWO_SIDE = 0x8643
Global Const $GL_VERTEX_ATTRIB_ARRAY_POINTER = 0x8645
Global Const $GL_STENCIL_BACK_FUNC = 0x8800
Global Const $GL_STENCIL_BACK_FAIL = 0x8801
Global Const $GL_STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802
Global Const $GL_STENCIL_BACK_PASS_DEPTH_PASS = 0x8803
Global Const $GL_MAX_DRAW_BUFFERS = 0x8824
Global Const $GL_DRAW_BUFFER0 = 0x8825
Global Const $GL_DRAW_BUFFER1 = 0x8826
Global Const $GL_DRAW_BUFFER2 = 0x8827
Global Const $GL_DRAW_BUFFER3 = 0x8828
Global Const $GL_DRAW_BUFFER4 = 0x8829
Global Const $GL_DRAW_BUFFER5 = 0x882A
Global Const $GL_DRAW_BUFFER6 = 0x882B
Global Const $GL_DRAW_BUFFER7 = 0x882C
Global Const $GL_DRAW_BUFFER8 = 0x882D
Global Const $GL_DRAW_BUFFER9 = 0x882E
Global Const $GL_DRAW_BUFFER10 = 0x882F
Global Const $GL_DRAW_BUFFER11 = 0x8830
Global Const $GL_DRAW_BUFFER12 = 0x8831
Global Const $GL_DRAW_BUFFER13 = 0x8832
Global Const $GL_DRAW_BUFFER14 = 0x8833
Global Const $GL_DRAW_BUFFER15 = 0x8834
Global Const $GL_BLEND_EQUATION_ALPHA = 0x883D
Global Const $GL_POINT_SPRITE = 0x8861
Global Const $GL_COORD_REPLACE = 0x8862
Global Const $GL_MAX_VERTEX_ATTRIBS = 0x8869
Global Const $GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A
Global Const $GL_MAX_TEXTURE_COORDS = 0x8871
Global Const $GL_MAX_TEXTURE_IMAGE_UNITS = 0x8872
Global Const $GL_FRAGMENT_SHADER = 0x8B30
Global Const $GL_VERTEX_SHADER = 0x8B31
Global Const $GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49
Global Const $GL_MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A
Global Const $GL_MAX_VARYING_FLOATS = 0x8B4B
Global Const $GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C
Global Const $GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D
Global Const $GL_SHADER_TYPE = 0x8B4F
Global Const $GL_FLOAT_VEC2 = 0x8B50
Global Const $GL_FLOAT_VEC3 = 0x8B51
Global Const $GL_FLOAT_VEC4 = 0x8B52
Global Const $GL_INT_VEC2 = 0x8B53
Global Const $GL_INT_VEC3 = 0x8B54
Global Const $GL_INT_VEC4 = 0x8B55
Global Const $GL_BOOL = 0x8B56
Global Const $GL_BOOL_VEC2 = 0x8B57
Global Const $GL_BOOL_VEC3 = 0x8B58
Global Const $GL_BOOL_VEC4 = 0x8B59
Global Const $GL_FLOAT_MAT2 = 0x8B5A
Global Const $GL_FLOAT_MAT3 = 0x8B5B
Global Const $GL_FLOAT_MAT4 = 0x8B5C
Global Const $GL_SAMPLER_1D = 0x8B5D
Global Const $GL_SAMPLER_2D = 0x8B5E
Global Const $GL_SAMPLER_3D = 0x8B5F
Global Const $GL_SAMPLER_CUBE = 0x8B60
Global Const $GL_SAMPLER_1D_SHADOW = 0x8B61
Global Const $GL_SAMPLER_2D_SHADOW = 0x8B62
Global Const $GL_DELETE_STATUS = 0x8B80
Global Const $GL_COMPILE_STATUS = 0x8B81
Global Const $GL_LINK_STATUS = 0x8B82
Global Const $GL_VALIDATE_STATUS = 0x8B83
Global Const $GL_INFO_LOG_LENGTH = 0x8B84
Global Const $GL_ATTACHED_SHADERS = 0x8B85
Global Const $GL_ACTIVE_UNIFORMS = 0x8B86
Global Const $GL_ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87
Global Const $GL_SHADER_SOURCE_LENGTH = 0x8B88
Global Const $GL_ACTIVE_ATTRIBUTES = 0x8B89
Global Const $GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A
Global Const $GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B
Global Const $GL_SHADING_LANGUAGE_VERSION = 0x8B8C
Global Const $GL_CURRENT_PROGRAM = 0x8B8D
Global Const $GL_POINT_SPRITE_COORD_ORIGIN = 0x8CA0
Global Const $GL_LOWER_LEFT = 0x8CA1
Global Const $GL_UPPER_LEFT = 0x8CA2
Global Const $GL_STENCIL_BACK_REF = 0x8CA3
Global Const $GL_STENCIL_BACK_VALUE_MASK = 0x8CA4
Global Const $GL_STENCIL_BACK_WRITEMASK = 0x8CA5

; ----------------------------- GL_VERSION_2_1 ----------------------------

Global Const $GL_VERSION_2_1 = 1

Global Const $GL_CURRENT_RASTER_SECONDARY_COLOR = 0x845F
Global Const $GL_PIXEL_PACK_BUFFER = 0x88EB
Global Const $GL_PIXEL_UNPACK_BUFFER = 0x88EC
Global Const $GL_PIXEL_PACK_BUFFER_BINDING = 0x88ED
Global Const $GL_PIXEL_UNPACK_BUFFER_BINDING = 0x88EF
Global Const $GL_FLOAT_MAT2x3 = 0x8B65
Global Const $GL_FLOAT_MAT2x4 = 0x8B66
Global Const $GL_FLOAT_MAT3x2 = 0x8B67
Global Const $GL_FLOAT_MAT3x4 = 0x8B68
Global Const $GL_FLOAT_MAT4x2 = 0x8B69
Global Const $GL_FLOAT_MAT4x3 = 0x8B6A
Global Const $GL_SRGB = 0x8C40
Global Const $GL_SRGB8 = 0x8C41
Global Const $GL_SRGB_ALPHA = 0x8C42
Global Const $GL_SRGB8_ALPHA8 = 0x8C43
Global Const $GL_SLUMINANCE_ALPHA = 0x8C44
Global Const $GL_SLUMINANCE8_ALPHA8 = 0x8C45
Global Const $GL_SLUMINANCE = 0x8C46
Global Const $GL_SLUMINANCE8 = 0x8C47
Global Const $GL_COMPRESSED_SRGB = 0x8C48
Global Const $GL_COMPRESSED_SRGB_ALPHA = 0x8C49
Global Const $GL_COMPRESSED_SLUMINANCE = 0x8C4A
Global Const $GL_COMPRESSED_SLUMINANCE_ALPHA = 0x8C4B

; ----------------------------- GL_VERSION_3_0 ----------------------------

Global Const $GL_VERSION_3_0 = 1

Global Const $GL_MAX_CLIP_DISTANCES = 0x0D32
Global Const $GL_CLIP_DISTANCE5 = 0x3005
Global Const $GL_CLIP_DISTANCE1 = 0x3001
Global Const $GL_CLIP_DISTANCE3 = 0x3003
Global Const $GL_COMPARE_REF_TO_TEXTURE = 0x884E
Global Const $GL_CLIP_DISTANCE0 = 0x3000
Global Const $GL_CLIP_DISTANCE4 = 0x3004
Global Const $GL_CLIP_DISTANCE2 = 0x3002
Global Const $GL_MAX_VARYING_COMPONENTS = 0x8B4B
Global Const $GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x0001
Global Const $GL_MAJOR_VERSION = 0x821B
Global Const $GL_MINOR_VERSION = 0x821C
Global Const $GL_NUM_EXTENSIONS = 0x821D
Global Const $GL_CONTEXT_FLAGS = 0x821E
Global Const $GL_DEPTH_BUFFER = 0x8223
Global Const $GL_STENCIL_BUFFER = 0x8224
Global Const $GL_COMPRESSED_RED = 0x8225
Global Const $GL_COMPRESSED_RG = 0x8226
Global Const $GL_RGBA32F = 0x8814
Global Const $GL_RGB32F = 0x8815
Global Const $GL_RGBA16F = 0x881A
Global Const $GL_RGB16F = 0x881B
Global Const $GL_VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD
Global Const $GL_MAX_ARRAY_TEXTURE_LAYERS = 0x88FF
Global Const $GL_MIN_PROGRAM_TEXEL_OFFSET = 0x8904
Global Const $GL_MAX_PROGRAM_TEXEL_OFFSET = 0x8905
Global Const $GL_CLAMP_VERTEX_COLOR = 0x891A
Global Const $GL_CLAMP_FRAGMENT_COLOR = 0x891B
Global Const $GL_CLAMP_READ_COLOR = 0x891C
Global Const $GL_FIXED_ONLY = 0x891D
Global Const $GL_TEXTURE_RED_TYPE = 0x8C10
Global Const $GL_TEXTURE_GREEN_TYPE = 0x8C11
Global Const $GL_TEXTURE_BLUE_TYPE = 0x8C12
Global Const $GL_TEXTURE_ALPHA_TYPE = 0x8C13
Global Const $GL_TEXTURE_LUMINANCE_TYPE = 0x8C14
Global Const $GL_TEXTURE_INTENSITY_TYPE = 0x8C15
Global Const $GL_TEXTURE_DEPTH_TYPE = 0x8C16
Global Const $GL_UNSIGNED_NORMALIZED = 0x8C17
Global Const $GL_TEXTURE_1D_ARRAY = 0x8C18
Global Const $GL_PROXY_TEXTURE_1D_ARRAY = 0x8C19
Global Const $GL_TEXTURE_2D_ARRAY = 0x8C1A
Global Const $GL_PROXY_TEXTURE_2D_ARRAY = 0x8C1B
Global Const $GL_TEXTURE_BINDING_1D_ARRAY = 0x8C1C
Global Const $GL_TEXTURE_BINDING_2D_ARRAY = 0x8C1D
Global Const $GL_R11F_G11F_B10F = 0x8C3A
Global Const $GL_UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B
Global Const $GL_RGB9_E5 = 0x8C3D
Global Const $GL_UNSIGNED_INT_5_9_9_9_REV = 0x8C3E
Global Const $GL_TEXTURE_SHARED_SIZE = 0x8C3F
Global Const $GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76
Global Const $GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F
Global Const $GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80
Global Const $GL_TRANSFORM_FEEDBACK_VARYINGS = 0x8C83
Global Const $GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84
Global Const $GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85
Global Const $GL_PRIMITIVES_GENERATED = 0x8C87
Global Const $GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88
Global Const $GL_RASTERIZER_DISCARD = 0x8C89
Global Const $GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A
Global Const $GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B
Global Const $GL_INTERLEAVED_ATTRIBS = 0x8C8C
Global Const $GL_SEPARATE_ATTRIBS = 0x8C8D
Global Const $GL_TRANSFORM_FEEDBACK_BUFFER = 0x8C8E
Global Const $GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F
Global Const $GL_RGBA32UI = 0x8D70
Global Const $GL_RGB32UI = 0x8D71
Global Const $GL_RGBA16UI = 0x8D76
Global Const $GL_RGB16UI = 0x8D77
Global Const $GL_RGBA8UI = 0x8D7C
Global Const $GL_RGB8UI = 0x8D7D
Global Const $GL_RGBA32I = 0x8D82
Global Const $GL_RGB32I = 0x8D83
Global Const $GL_RGBA16I = 0x8D88
Global Const $GL_RGB16I = 0x8D89
Global Const $GL_RGBA8I = 0x8D8E
Global Const $GL_RGB8I = 0x8D8F
Global Const $GL_RED_INTEGER = 0x8D94
Global Const $GL_GREEN_INTEGER = 0x8D95
Global Const $GL_BLUE_INTEGER = 0x8D96
Global Const $GL_ALPHA_INTEGER = 0x8D97
Global Const $GL_RGB_INTEGER = 0x8D98
Global Const $GL_RGBA_INTEGER = 0x8D99
Global Const $GL_BGR_INTEGER = 0x8D9A
Global Const $GL_BGRA_INTEGER = 0x8D9B
Global Const $GL_SAMPLER_1D_ARRAY = 0x8DC0
Global Const $GL_SAMPLER_2D_ARRAY = 0x8DC1
Global Const $GL_SAMPLER_1D_ARRAY_SHADOW = 0x8DC3
Global Const $GL_SAMPLER_2D_ARRAY_SHADOW = 0x8DC4
Global Const $GL_SAMPLER_CUBE_SHADOW = 0x8DC5
Global Const $GL_UNSIGNED_INT_VEC2 = 0x8DC6
Global Const $GL_UNSIGNED_INT_VEC3 = 0x8DC7
Global Const $GL_UNSIGNED_INT_VEC4 = 0x8DC8
Global Const $GL_INT_SAMPLER_1D = 0x8DC9
Global Const $GL_INT_SAMPLER_2D = 0x8DCA
Global Const $GL_INT_SAMPLER_3D = 0x8DCB
Global Const $GL_INT_SAMPLER_CUBE = 0x8DCC
Global Const $GL_INT_SAMPLER_1D_ARRAY = 0x8DCE
Global Const $GL_INT_SAMPLER_2D_ARRAY = 0x8DCF
Global Const $GL_UNSIGNED_INT_SAMPLER_1D = 0x8DD1
Global Const $GL_UNSIGNED_INT_SAMPLER_2D = 0x8DD2
Global Const $GL_UNSIGNED_INT_SAMPLER_3D = 0x8DD3
Global Const $GL_UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4
Global Const $GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6
Global Const $GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7
Global Const $GL_QUERY_WAIT = 0x8E13
Global Const $GL_QUERY_NO_WAIT = 0x8E14
Global Const $GL_QUERY_BY_REGION_WAIT = 0x8E15
Global Const $GL_QUERY_BY_REGION_NO_WAIT = 0x8E16

; ----------------------------- GL_VERSION_3_1 ----------------------------

Global Const $GL_VERSION_3_1 = 1

Global Const $GL_TEXTURE_RECTANGLE = 0x84F5
Global Const $GL_TEXTURE_BINDING_RECTANGLE = 0x84F6
Global Const $GL_PROXY_TEXTURE_RECTANGLE = 0x84F7
Global Const $GL_MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8
Global Const $GL_SAMPLER_2D_RECT = 0x8B63
Global Const $GL_SAMPLER_2D_RECT_SHADOW = 0x8B64
Global Const $GL_TEXTURE_BUFFER = 0x8C2A
Global Const $GL_MAX_TEXTURE_BUFFER_SIZE = 0x8C2B
Global Const $GL_TEXTURE_BINDING_BUFFER = 0x8C2C
Global Const $GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D
Global Const $GL_TEXTURE_BUFFER_FORMAT = 0x8C2E
Global Const $GL_SAMPLER_BUFFER = 0x8DC2
Global Const $GL_INT_SAMPLER_2D_RECT = 0x8DCD
Global Const $GL_INT_SAMPLER_BUFFER = 0x8DD0
Global Const $GL_UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5
Global Const $GL_UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8
Global Const $GL_RED_SNORM = 0x8F90
Global Const $GL_RG_SNORM = 0x8F91
Global Const $GL_RGB_SNORM = 0x8F92
Global Const $GL_RGBA_SNORM = 0x8F93
Global Const $GL_R8_SNORM = 0x8F94
Global Const $GL_RG8_SNORM = 0x8F95
Global Const $GL_RGB8_SNORM = 0x8F96
Global Const $GL_RGBA8_SNORM = 0x8F97
Global Const $GL_R16_SNORM = 0x8F98
Global Const $GL_RG16_SNORM = 0x8F99
Global Const $GL_RGB16_SNORM = 0x8F9A
Global Const $GL_RGBA16_SNORM = 0x8F9B
Global Const $GL_SIGNED_NORMALIZED = 0x8F9C
Global Const $GL_PRIMITIVE_RESTART = 0x8F9D
Global Const $GL_PRIMITIVE_RESTART_INDEX = 0x8F9E
Global Const $GL_BUFFER_ACCESS_FLAGS = 0x911F
Global Const $GL_BUFFER_MAP_LENGTH = 0x9120
Global Const $GL_BUFFER_MAP_OFFSET = 0x9121

; ----------------------------- GL_VERSION_3_2 ----------------------------

Global Const $GL_VERSION_3_2 = 1

Global Const $GL_CONTEXT_CORE_PROFILE_BIT = 0x00000001
Global Const $GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002
Global Const $GL_LINES_ADJACENCY = 0x000A
Global Const $GL_LINE_STRIP_ADJACENCY = 0x000B
Global Const $GL_TRIANGLES_ADJACENCY = 0x000C
Global Const $GL_TRIANGLE_STRIP_ADJACENCY = 0x000D
Global Const $GL_PROGRAM_POINT_SIZE = 0x8642
Global Const $GL_GEOMETRY_VERTICES_OUT = 0x8916
Global Const $GL_GEOMETRY_INPUT_TYPE = 0x8917
Global Const $GL_GEOMETRY_OUTPUT_TYPE = 0x8918
Global Const $GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29
Global Const $GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7
Global Const $GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8
Global Const $GL_GEOMETRY_SHADER = 0x8DD9
Global Const $GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF
Global Const $GL_MAX_GEOMETRY_OUTPUT_VERTICES = 0x8DE0
Global Const $GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1
Global Const $GL_MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122
Global Const $GL_MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123
Global Const $GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124
Global Const $GL_MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125
Global Const $GL_CONTEXT_PROFILE_MASK = 0x9126

; ----------------------------- GL_VERSION_3_3 ----------------------------

Global Const $GL_VERSION_3_3 = 1

Global Const $GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE
Global Const $GL_ANY_SAMPLES_PASSED = 0x8C2F
Global Const $GL_TEXTURE_SWIZZLE_R = 0x8E42
Global Const $GL_TEXTURE_SWIZZLE_G = 0x8E43
Global Const $GL_TEXTURE_SWIZZLE_B = 0x8E44
Global Const $GL_TEXTURE_SWIZZLE_A = 0x8E45
Global Const $GL_TEXTURE_SWIZZLE_RGBA = 0x8E46
Global Const $GL_RGB10_A2UI = 0x906F

; ----------------------------- GL_VERSION_4_0 ----------------------------

Global Const $GL_VERSION_4_0 = 1

Global Const $GL_GEOMETRY_SHADER_INVOCATIONS = 0x887F
Global Const $GL_SAMPLE_SHADING = 0x8C36
Global Const $GL_MIN_SAMPLE_SHADING_VALUE = 0x8C37
Global Const $GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A
Global Const $GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B
Global Const $GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C
Global Const $GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D
Global Const $GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E
Global Const $GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F
Global Const $GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS = 0x8F9F
Global Const $GL_TEXTURE_CUBE_MAP_ARRAY = 0x9009
Global Const $GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A
Global Const $GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900B
Global Const $GL_SAMPLER_CUBE_MAP_ARRAY = 0x900C
Global Const $GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D
Global Const $GL_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E
Global Const $GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F

; ----------------------------- GL_VERSION_4_1 ----------------------------

Global Const $GL_VERSION_4_1 = 1

; ----------------------------- GL_VERSION_4_2 ----------------------------

Global Const $GL_VERSION_4_2 = 1

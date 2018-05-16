#include-once

; EGL Versioning
Global Const $EGL_VERSION_1_0 = 1
Global Const $EGL_VERSION_1_1 = 1
Global Const $EGL_VERSION_1_2 = 1
Global Const $EGL_VERSION_1_3 = 1
Global Const $EGL_VERSION_1_4 = 1

; EGL aliases
Global Const $EGL_FALSE	= 0
Global Const $EGL_TRUE = 1
; Out-of-band handle values
Global Const $EGL_DEFAULT_DISPLAY	= Null
Global Const $EGL_NO_CONTEXT = Null
Global Const $EGL_NO_DISPLAY = Null
Global Const $EGL_NO_SURFACE = Null
; Out-of-band attribute value
Global Const $EGL_DONT_CARE	= -1
; Errors / GetError return values
Global Const $EGL_SUCCESS =  0x3000
Global Const $EGL_NOT_INITIALIZED	 = 0x3001
Global Const $EGL_BAD_ACCESS =  0x3002
Global Const $EGL_BAD_ALLOC =  0x3003
Global Const $EGL_BAD_ATTRIBUTE	 = 0x3004
Global Const $EGL_BAD_CONFIG =  0x3005
Global Const $EGL_BAD_CONTEXT =  0x3006
Global Const $EGL_BAD_CURRENT_SURFACE	 = 0x3007
Global Const $EGL_BAD_DISPLAY =  0x3008
Global Const $EGL_BAD_MATCH =  0x3009
Global Const $EGL_BAD_NATIVE_PIXMAP	 = 0x300A
Global Const $EGL_BAD_NATIVE_WINDOW	 = 0x300B
Global Const $EGL_BAD_PARAMETER	 = 0x300C
Global Const $EGL_BAD_SURFACE =  0x300D
Global Const $EGL_CONTEXT_LOST	 = 0x300E	; EGL 1.1 - IMG_power_management
; Reserved 0x300F-0x301F for additional errors
; Config attributes
Global Const $EGL_BUFFER_SIZE =  0x3020
Global Const $EGL_ALPHA_SIZE =  0x3021
Global Const $EGL_BLUE_SIZE =  0x3022
Global Const $EGL_GREEN_SIZE =  0x3023
Global Const $EGL_RED_SIZE =  0x3024
Global Const $EGL_DEPTH_SIZE =  0x3025
Global Const $EGL_STENCIL_SIZE	 = 0x3026
Global Const $EGL_CONFIG_CAVEAT	 = 0x3027
Global Const $EGL_CONFIG_ID =  0x3028
Global Const $EGL_LEVEL =  0x3029
Global Const $EGL_MAX_PBUFFER_HEIGHT	 = 0x302A
Global Const $EGL_MAX_PBUFFER_PIXELS	 = 0x302B
Global Const $EGL_MAX_PBUFFER_WIDTH	 = 0x302C
Global Const $EGL_NATIVE_RENDERABLE	 = 0x302D
Global Const $EGL_NATIVE_VISUAL_ID	 = 0x302E
Global Const $EGL_NATIVE_VISUAL_TYPE	 = 0x302F
Global Const $EGL_SAMPLES =  0x3031
Global Const $EGL_SAMPLE_BUFFERS	 = 0x3032
Global Const $EGL_SURFACE_TYPE	 = 0x3033
Global Const $EGL_TRANSPARENT_TYPE	 = 0x3034
Global Const $EGL_TRANSPARENT_BLUE_VALUE = 0x3035
Global Const $EGL_TRANSPARENT_GREEN_VALUE = 0x3036
Global Const $EGL_TRANSPARENT_RED_VALUE = 0x3037
Global Const $EGL_NONE =  0x3038	; Attrib list terminator
Global Const $EGL_BIND_TO_TEXTURE_RGB	 = 0x3039
Global Const $EGL_BIND_TO_TEXTURE_RGBA = 0x303A
Global Const $EGL_MIN_SWAP_INTERVAL	 = 0x303B
Global Const $EGL_MAX_SWAP_INTERVAL	 = 0x303C
Global Const $EGL_LUMINANCE_SIZE	 = 0x303D
Global Const $EGL_ALPHA_MASK_SIZE	 = 0x303E
Global Const $EGL_COLOR_BUFFER_TYPE	 = 0x303F
Global Const $EGL_RENDERABLE_TYPE	 = 0x3040
Global Const $EGL_MATCH_NATIVE_PIXMAP	 = 0x3041	; Pseudo-attribute (not queryable)
Global Const $EGL_CONFORMANT =  0x3042
; Reserved 0x3041-0x304F for additional config attributes
; Config attribute values
Global Const $EGL_SLOW_CONFIG =  0x3050	; $EGL_CONFIG_CAVEAT value
Global Const $EGL_NON_CONFORMANT_CONFIG = 0x3051	; $EGL_CONFIG_CAVEAT value
Global Const $EGL_TRANSPARENT_RGB	 = 0x3052	; $EGL_TRANSPARENT_TYPE value
Global Const $EGL_RGB_BUFFER =  0x308E	; $EGL_COLOR_BUFFER_TYPE value
Global Const $EGL_LUMINANCE_BUFFER	 = 0x308F	; $EGL_COLOR_BUFFER_TYPE value
; More config attribute values, for $EGL_TEXTURE_FORMAT
Global Const $EGL_NO_TEXTURE =  0x305C
Global Const $EGL_TEXTURE_RGB =  0x305D
Global Const $EGL_TEXTURE_RGBA	 = 0x305E
Global Const $EGL_TEXTURE_2D =  0x305F
; Config attribute mask bits
Global Const $EGL_PBUFFER_BIT =  0x0001	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_PIXMAP_BIT =  0x0002	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_WINDOW_BIT =  0x0004	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_VG_COLORSPACE_LINEAR_BIT = 0x0020	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_VG_ALPHA_FORMAT_PRE_BIT = 0x0040	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_MULTISAMPLE_RESOLVE_BOX_BIT = 0x0200	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_SWAP_BEHAVIOR_PRESERVED_BIT = 0x0400	; $EGL_SURFACE_TYPE mask bits
Global Const $EGL_OPENGL_ES_BIT	 = 0x0001	; $EGL_RENDERABLE_TYPE mask bits
Global Const $EGL_OPENVG_BIT =  0x0002	; $EGL_RENDERABLE_TYPE mask bits
Global Const $EGL_OPENGL_ES2_BIT	 = 0x0004	; $EGL_RENDERABLE_TYPE mask bits
Global Const $EGL_OPENGL_BIT =  0x0008	; $EGL_RENDERABLE_TYPE mask bits
; QueryString targets
Global Const $EGL_VENDOR =  0x3053
Global Const $EGL_VERSION =  0x3054
Global Const $EGL_EXTENSIONS =  0x3055
Global Const $EGL_CLIENT_APIS =  0x308D
; QuerySurface / SurfaceAttrib / CreatePbufferSurface targets
Global Const $EGL_HEIGHT =  0x3056
Global Const $EGL_WIDTH =  0x3057
Global Const $EGL_LARGEST_PBUFFER	 = 0x3058
Global Const $EGL_TEXTURE_FORMAT	 = 0x3080
Global Const $EGL_TEXTURE_TARGET	 = 0x3081
Global Const $EGL_MIPMAP_TEXTURE	 = 0x3082
Global Const $EGL_MIPMAP_LEVEL	 = 0x3083
Global Const $EGL_RENDER_BUFFER	 = 0x3086
Global Const $EGL_VG_COLORSPACE	 = 0x3087
Global Const $EGL_VG_ALPHA_FORMAT	 = 0x3088
Global Const $EGL_HORIZONTAL_RESOLUTION = 0x3090
Global Const $EGL_VERTICAL_RESOLUTION	 = 0x3091
Global Const $EGL_PIXEL_ASPECT_RATIO	 = 0x3092
Global Const $EGL_SWAP_BEHAVIOR	 = 0x3093
Global Const $EGL_MULTISAMPLE_RESOLVE	 = 0x3099
; $EGL_RENDER_BUFFER values / BindTexImage / ReleaseTexImage buffer targets
Global Const $EGL_BACK_BUFFER =  0x3084
Global Const $EGL_SINGLE_BUFFER	 = 0x3085
; OpenVG color spaces
Global Const $EGL_VG_COLORSPACE_sRGB	 = 0x3089	; $EGL_VG_COLORSPACE value
Global Const $EGL_VG_COLORSPACE_LINEAR = 0x308A	; $EGL_VG_COLORSPACE value
; OpenVG alpha formats
Global Const $EGL_VG_ALPHA_FORMAT_NONPRE = 0x308B	; $EGL_ALPHA_FORMAT value
Global Const $EGL_VG_ALPHA_FORMAT_PRE	 = 0x308C	; $EGL_ALPHA_FORMAT value
; Constant scale factor by which fractional display resolutions &
; aspect ratio are scaled when queried as integer values.

Global Const $EGL_DISPLAY_SCALING = 10000
; Unknown display resolution/aspect ratio
Global Const $EGL_UNKNOWN = -1
; Back buffer swap behaviors
Global Const $EGL_BUFFER_PRESERVED	 = 0x3094	; $EGL_SWAP_BEHAVIOR value
Global Const $EGL_BUFFER_DESTROYED	 = 0x3095	; $EGL_SWAP_BEHAVIOR value
; CreatePbufferFromClientBuffer buffer types
Global Const $EGL_OPENVG_IMAGE	 = 0x3096
; QueryContext targets
Global Const $EGL_CONTEXT_CLIENT_TYPE	 = 0x3097
; CreateContext attributes
Global Const $EGL_CONTEXT_CLIENT_VERSION = 0x3098
; Multisample resolution behaviors
Global Const $EGL_MULTISAMPLE_RESOLVE_DEFAULT = 0x309A	; $EGL_MULTISAMPLE_RESOLVE value
Global Const $EGL_MULTISAMPLE_RESOLVE_BOX = 0x309B	; $EGL_MULTISAMPLE_RESOLVE value
; BindAPI/QueryAPI targets
Global Const $EGL_OPENGL_ES_API	 = 0x30A0
Global Const $EGL_OPENVG_API =  0x30A1
Global Const $EGL_OPENGL_API =  0x30A2
; GetCurrentSurface targets
Global Const $EGL_DRAW =  0x3059
Global Const $EGL_READ =  0x305A
; WaitNative engines
Global Const $EGL_CORE_NATIVE_ENGINE	 = 0x305B
; EGL 1.2 tokens renamed for consistency in EGL 1.3
Global Const $EGL_COLORSPACE	= $EGL_VG_COLORSPACE
Global Const $EGL_ALPHA_FORMAT = $EGL_VG_ALPHA_FORMAT
Global Const $EGL_COLORSPACE_sRGB = $EGL_VG_COLORSPACE_sRGB
Global Const $EGL_COLORSPACE_LINEAR	= $EGL_VG_COLORSPACE_LINEAR
Global Const $EGL_ALPHA_FORMAT_NONPRE = $EGL_VG_ALPHA_FORMAT_NONPRE
Global Const $EGL_ALPHA_FORMAT_PRE = $EGL_VG_ALPHA_FORMAT_PRE

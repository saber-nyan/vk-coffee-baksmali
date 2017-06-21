.class public Lnet/ypresto/androidtranscoder/format/MediaFormatExtraConstants;
.super Ljava/lang/Object;
.source "MediaFormatExtraConstants.java"


# static fields
.field public static final KEY_AVC_PPS:Ljava/lang/String; = "csd-1"

.field public static final KEY_AVC_SPS:Ljava/lang/String; = "csd-0"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final KEY_ROTATION_DEGREES:Ljava/lang/String; = "rotation-degrees"

.field public static final MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final MIMETYPE_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

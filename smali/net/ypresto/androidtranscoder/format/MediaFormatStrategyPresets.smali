.class public Lnet/ypresto/androidtranscoder/format/MediaFormatStrategyPresets;
.super Ljava/lang/Object;
.source "MediaFormatStrategyPresets.java"


# static fields
.field public static final EXPORT_PRESET_960x540:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;-><init>()V

    sput-object v0, Lnet/ypresto/androidtranscoder/format/MediaFormatStrategyPresets;->EXPORT_PRESET_960x540:Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static createAndroid720pStrategy()Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;-><init>()V

    return-object v0
.end method

.method public static createAndroid720pStrategy(I)Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1
    .param p0, "bitRate"    # I

    .prologue
    .line 41
    new-instance v0, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;

    invoke-direct {v0, p0}, Lnet/ypresto/androidtranscoder/format/Android720pFormatStrategy;-><init>(I)V

    return-object v0
.end method

.method public static createExportPreset960x540Strategy()Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/format/ExportPreset960x540Strategy;-><init>()V

    return-object v0
.end method

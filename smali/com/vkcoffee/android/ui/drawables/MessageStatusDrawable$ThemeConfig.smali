.class public Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;
.super Ljava/lang/Object;
.source "MessageStatusDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ThemeConfig"
.end annotation


# static fields
.field static alphaDuration:F

.field static duration1:F

.field static duration2:F

.field static duration3:F

.field static scale1K:F

.field static scale2K:F

.field static totalDurationK:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3d8f5c29    # 0.07f

    .line 218
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration1:F

    .line 219
    sput v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration2:F

    .line 220
    sput v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->duration3:F

    .line 222
    const v0, 0x3f59999a    # 0.85f

    sput v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->totalDurationK:F

    .line 224
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale1K:F

    .line 225
    const v0, 0x3f87ae14    # 1.06f

    sput v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->scale2K:F

    .line 227
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$ThemeConfig;->alphaDuration:F

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/vkcoffee/android/ui/GifView$Frame;
.super Ljava/lang/Object;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field clear:Z

.field delay:J

.field image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/GifView;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/GifView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/vkcoffee/android/ui/GifView$Frame;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/GifView;Lcom/vkcoffee/android/ui/GifView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/GifView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/GifView$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/GifView$Frame;-><init>(Lcom/vkcoffee/android/ui/GifView;)V

    return-void
.end method

.class Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;
.super Ljava/lang/Object;
.source "StateShadowTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/StateShadowTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowLayer"
.end annotation


# instance fields
.field color:I

.field dx:F

.field dy:F

.field radius:F

.field final synthetic this$0:Lcom/vkcoffee/android/ui/StateShadowTextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/StateShadowTextView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->this$0:Lcom/vkcoffee/android/ui/StateShadowTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/ui/StateShadowTextView;Ljava/lang/String;)V
    .locals 4
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->this$0:Lcom/vkcoffee/android/ui/StateShadowTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "ss":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->color:I

    .line 108
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->dx:F

    .line 109
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->dy:F

    .line 110
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->radius:F

    .line 111
    iget v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 112
    const v1, 0x33d6bf95    # 1.0E-7f

    iput v1, p0, Lcom/vkcoffee/android/ui/StateShadowTextView$ShadowLayer;->radius:F

    .line 114
    :cond_0
    return-void
.end method

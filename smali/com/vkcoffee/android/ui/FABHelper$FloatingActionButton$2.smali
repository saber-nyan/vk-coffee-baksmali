.class Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "FABHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$2;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 292
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    .line 293
    .local v0, "size":I
    invoke-virtual {p2, v2, v2, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 294
    return-void
.end method

.class Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;
.super Ljava/lang/Object;
.source "FABHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->toggle(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 325
    .local v0, "currentVto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;->val$visible:Z

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->access$600(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;ZZ)V

    .line 329
    return v3
.end method

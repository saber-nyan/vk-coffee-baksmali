.class Lcom/vkcoffee/android/ui/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$2;->this$0:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$2;->this$0:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setDragState(I)V

    .line 321
    return-void
.end method

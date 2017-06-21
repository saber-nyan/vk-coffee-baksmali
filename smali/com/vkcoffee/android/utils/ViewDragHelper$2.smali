.class Lcom/vkcoffee/android/utils/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/utils/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/utils/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/utils/ViewDragHelper;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/vkcoffee/android/utils/ViewDragHelper$2;->this$0:Lcom/vkcoffee/android/utils/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ViewDragHelper$2;->this$0:Lcom/vkcoffee/android/utils/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/utils/ViewDragHelper;->setDragState(I)V

    .line 323
    return-void
.end method

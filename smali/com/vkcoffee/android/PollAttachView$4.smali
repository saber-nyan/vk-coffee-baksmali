.class Lcom/vkcoffee/android/PollAttachView$4;
.super Ljava/lang/Object;
.source "PollAttachView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkcoffee/android/api/PollOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PollAttachView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PollAttachView$4;->this$0:Lcom/vkcoffee/android/PollAttachView;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/vkcoffee/android/PollAttachView$4;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v1}, Lcom/vkcoffee/android/PollAttachView;->access$1(Lcom/vkcoffee/android/PollAttachView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/vkcoffee/android/PollAttachView$4;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v1}, Lcom/vkcoffee/android/PollAttachView;->access$8(Lcom/vkcoffee/android/PollAttachView;)V

    .line 356
    const/4 v0, 0x1

    .line 361
    .local v0, "var2":Z
    :goto_0
    return v0

    .line 358
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_0
.end method

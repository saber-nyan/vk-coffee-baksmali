.class Lcom/vkcoffee/android/ui/ErrorView$2;
.super Ljava/lang/Object;
.source "ErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/ErrorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ErrorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ErrorView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ErrorView$2;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ErrorView$2;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ErrorView;->access$100(Lcom/vkcoffee/android/ui/ErrorView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView$2;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ErrorView;->access$000(Lcom/vkcoffee/android/ui/ErrorView;)V

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView$2;->this$0:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ui/ErrorView;->access$102(Lcom/vkcoffee/android/ui/ErrorView;J)J

    goto :goto_0
.end method

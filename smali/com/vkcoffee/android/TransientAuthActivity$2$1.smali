.class Lcom/vkcoffee/android/TransientAuthActivity$2$1;
.super Ljava/lang/Object;
.source "TransientAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/TransientAuthActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/TransientAuthActivity$2;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v0, v0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/TransientAuthActivity;->access$300(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "code"

    iget-object v2, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v2, v2, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/TransientAuthActivity;->access$600(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v0, v0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$1;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v1, v1, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/TransientAuthActivity;->access$300(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->access$400(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/util/HashMap;)V

    .line 221
    return-void
.end method

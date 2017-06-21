.class Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NewsSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsSearchFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;->success([Ljava/lang/String;)V

    return-void
.end method

.method public success([Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$002(Lcom/vkcoffee/android/fragments/NewsSearchFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$100(Lcom/vkcoffee/android/fragments/NewsSearchFragment;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/NewsSearchFragment;->access$202(Lcom/vkcoffee/android/fragments/NewsSearchFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 63
    return-void
.end method

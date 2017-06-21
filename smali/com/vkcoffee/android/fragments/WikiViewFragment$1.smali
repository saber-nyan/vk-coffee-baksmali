.class Lcom/vkcoffee/android/fragments/WikiViewFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "WikiViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment;->doLoadPage(Lcom/vkcoffee/android/api/pages/PagesGetHTML;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    .line 248
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->meta:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$6(Lcom/vkcoffee/android/fragments/WikiViewFragment;Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$7(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$8(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;->success(Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;)V

    return-void
.end method

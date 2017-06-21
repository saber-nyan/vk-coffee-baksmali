.class Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;
.super Ljava/lang/Object;
.source "DocumentsChooserFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->access$200(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->access$300(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->access$402(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 120
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->access$000(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;)Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$Adapter;->setData(Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;)V

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->this$0:Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;->access$100(Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;Ljava/util/List;Z)V

    .line 112
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment$1;->success(Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;)V

    return-void
.end method

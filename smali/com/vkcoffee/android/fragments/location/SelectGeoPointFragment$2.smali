.class Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SelectGeoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Landroid/content/Context;Lcom/vkcoffee/android/attachments/GeoAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    .line 304
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->title:Ljava/lang/String;

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "point"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 309
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 310
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;->success(Ljava/lang/Integer;)V

    return-void
.end method

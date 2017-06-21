.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/CitySelectFragment$CityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->selectCity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkcoffee/android/data/database/City;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/database/City;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    iget v1, p1, Lcom/vkcoffee/android/data/database/City;->id:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$3(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$17(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/database/City;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$11;->onItemSelected(Lcom/vkcoffee/android/data/database/City;)V

    return-void
.end method

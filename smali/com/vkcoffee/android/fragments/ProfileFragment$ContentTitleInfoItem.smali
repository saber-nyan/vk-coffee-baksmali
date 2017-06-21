.class Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentTitleInfoItem"
.end annotation


# instance fields
.field public buttonText:Ljava/lang/String;

.field public onButtonClick:Ljava/lang/Runnable;

.field public onClick:Ljava/lang/Runnable;

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 694
    const v0, 0x7f0804e3

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->buttonText:Ljava/lang/String;

    .line 701
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->text:Ljava/lang/CharSequence;

    .line 702
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onClick:Ljava/lang/Runnable;

    .line 703
    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2

    .prologue
    .line 710
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 718
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 706
    const/16 v0, -0x16

    return v0
.end method

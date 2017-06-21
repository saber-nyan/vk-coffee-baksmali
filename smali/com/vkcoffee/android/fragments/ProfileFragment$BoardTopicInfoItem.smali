.class Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoardTopicInfoItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field public topic:Lcom/vkcoffee/android/api/BoardTopic;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/BoardTopic;)V
    .locals 1
    .param p2, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 615
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    .line 616
    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 619
    const/16 v0, -0x15

    return v0
.end method

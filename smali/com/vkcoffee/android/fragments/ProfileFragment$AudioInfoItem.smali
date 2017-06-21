.class Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioInfoItem"
.end annotation


# instance fields
.field public audio:Lcom/vkcoffee/android/AudioFile;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/AudioFile;)V
    .locals 1
    .param p2, "audio"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 542
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    .line 543
    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2

    .prologue
    .line 550
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 546
    const/16 v0, -0x14

    return v0
.end method

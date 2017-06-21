.class public Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "PollEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 60
    const-class v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    new-instance v1, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x44340000    # 720.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public attachPoll(Lcom/vkcoffee/android/attachments/PollAttachment;)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;
    .locals 2
    .param p1, "poll"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "poll"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    return-object p0
.end method

.method setOwnerId(I)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;
    .locals 2
    .param p1, "ownerId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "oid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    return-object p0
.end method

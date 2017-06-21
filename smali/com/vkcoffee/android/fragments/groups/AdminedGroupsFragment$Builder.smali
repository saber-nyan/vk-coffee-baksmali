.class public Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "AdminedGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "requiredLevel"    # I

    .prologue
    .line 33
    const-class v0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "required_level"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public select(Z)Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    return-object p0
.end method

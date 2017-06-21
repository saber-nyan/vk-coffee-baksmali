.class Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$4;
.super Ljava/lang/Object;
.source "SettingsNotificationsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "args":Landroid/os/Bundle;
    const-class v1, Lcom/vkcoffee/android/fragments/userlist/PostSubscriptionsUserListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 160
    const/4 v1, 0x1

    return v1
.end method

.class Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$1;
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
    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->access$000(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

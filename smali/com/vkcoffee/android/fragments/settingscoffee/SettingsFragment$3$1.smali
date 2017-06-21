.class Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 398
    return-void
.end method

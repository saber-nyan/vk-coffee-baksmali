.class public Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "SettingsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsListFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V
    .locals 0
    .param p1, "settingsListFragment"    # Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 451
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "settingsListFragment"    # Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .prologue
    .line 454
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->lambda$confirmLogout$603(Landroid/content/DialogInterface;I)V

    .line 459
    return-void
.end method

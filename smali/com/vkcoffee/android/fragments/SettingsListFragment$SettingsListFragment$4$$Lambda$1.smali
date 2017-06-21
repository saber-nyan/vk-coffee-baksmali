.class public Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;
.super Ljava/lang/Object;
.source "SettingsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsListFragment$4$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "anonymousClass4"    # Lcom/vkcoffee/android/fragments/SettingsListFragment;
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 468
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;->arg$2:Landroid/app/ProgressDialog;

    .line 469
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "anonymousClass4"    # Lcom/vkcoffee/android/fragments/SettingsListFragment;
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 472
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->lambda$run$602(Landroid/app/ProgressDialog;)V

    .line 477
    return-void
.end method

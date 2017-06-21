.class public Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;
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
    name = "SettingsListFragment$SettingsAdapter$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)V
    .locals 0
    .param p1, "settingsAdapter"    # Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .line 486
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "settingsAdapter"    # Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    .prologue
    .line 489
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$SettingsAdapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsAdapter;->lambda$createData$604()V

    .line 494
    return-void
.end method

.class Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;
.super Ljava/lang/Object;
.source "SettingsDomainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$202(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$1000(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    .line 256
    return-void
.end method

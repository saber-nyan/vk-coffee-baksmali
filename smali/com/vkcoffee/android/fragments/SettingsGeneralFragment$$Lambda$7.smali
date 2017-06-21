.class final synthetic Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

.field private final arg$2:Landroid/app/ProgressDialog;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$2:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$2:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->arg$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->lambda$null$599(Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

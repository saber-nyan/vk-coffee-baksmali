.class final synthetic Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;->arg$1:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;-><init>(Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;->arg$1:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->lambda$null$591(Landroid/app/ProgressDialog;)V

    return-void
.end method

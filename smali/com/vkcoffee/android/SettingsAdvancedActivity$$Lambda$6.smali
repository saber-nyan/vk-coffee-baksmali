.class final synthetic Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Lcom/vkcoffee/android/ProgressCallback;

.field private final arg$5:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$4:Lcom/vkcoffee/android/ProgressCallback;

    iput-object p5, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$5:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;-><init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$4:Lcom/vkcoffee/android/ProgressCallback;

    iget-object v4, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->arg$5:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->lambda$moveAudioCache$694(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)V

    return-void
.end method

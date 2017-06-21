.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:[Z


# direct methods
.method private constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;->arg$1:[Z

    return-void
.end method

.method public static lambdaFactory$([Z)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;-><init>([Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;->arg$1:[Z

    invoke-static {v0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$doDownloadAudio$293([ZLandroid/view/View;)V

    return-void
.end method

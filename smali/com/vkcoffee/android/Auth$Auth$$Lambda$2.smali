.class public Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "authResultReceiver"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$1:Ljava/lang/String;

    .line 448
    iput-object p2, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$2:Ljava/lang/String;

    .line 449
    iput-object p3, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .line 450
    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "authResultReceiver"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .prologue
    .line 453
    new-instance v0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$1:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->arg$3:Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Auth;->lambda$authorizeRestoreAsync$238(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    .line 458
    return-void
.end method

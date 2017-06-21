.class public final Lcom/squareup/leakcanary/LeakCanary;
.super Ljava/lang/Object;
.source "LeakCanary.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 11
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method

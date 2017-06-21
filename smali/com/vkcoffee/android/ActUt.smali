.class public Lcom/vkcoffee/android/ActUt;
.super Ljava/lang/Object;
.source "ActUt.java"


# static fields
.field private static activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static activityVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ActUt;->activities:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityPaused()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/ActUt;->activityVisible:Z

    .line 40
    return-void
.end method

.method public static activityResumed()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/ActUt;->activityVisible:Z

    .line 36
    return-void
.end method

.method public static add(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/ActUt;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public static finishAll()V
    .locals 3

    .prologue
    .line 22
    sget-object v1, Lcom/vkcoffee/android/ActUt;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    return-void

    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 23
    .restart local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/vkcoffee/android/ActUt;->activityVisible:Z

    return v0
.end method

.method public static remove(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 18
    sget-object v0, Lcom/vkcoffee/android/ActUt;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

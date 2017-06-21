.class public final Lcom/google/android/gms/internal/zzfx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

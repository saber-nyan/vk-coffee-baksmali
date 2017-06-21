.class public abstract Lcom/google/android/gms/internal/zzbp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzvr:I

.field private final zzvs:Ljava/lang/String;

.field private final zzvt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbp;->zzvr:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbp;->zzvs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbp;->zzvt:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbK()Lcom/google/android/gms/internal/zzbq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/internal/zzbp;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbp;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zza(ILjava/lang/String;)Lcom/google/android/gms/internal/zzbp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbp;->zza(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbK()Lcom/google/android/gms/internal/zzbq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbq;->zzb(Lcom/google/android/gms/internal/zzbp;)V

    return-object v0
.end method

.method public static zza(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzbp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbp$2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzbp$2;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzbp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbp$3;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzbp$3;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zza(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzbp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbp$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbp$1;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zza(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbp$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbp$4;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;)Lcom/google/android/gms/internal/zzbp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbp;->zza(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbK()Lcom/google/android/gms/internal/zzbq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbq;->zzc(Lcom/google/android/gms/internal/zzbp;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbL()Lcom/google/android/gms/internal/zzbs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbs;->zzd(Lcom/google/android/gms/internal/zzbp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzvs:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public zzdq()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzvt:Ljava/lang/Object;

    return-object v0
.end method

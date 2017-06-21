.class public final Lcom/google/android/gms/internal/zzes;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzes$zza;
    }
.end annotation


# instance fields
.field public final zzCo:I

.field public final zzCp:Lcom/google/android/gms/internal/zzen;

.field public final zzCq:Lcom/google/android/gms/internal/zzey;

.field public final zzCr:Ljava/lang/String;

.field public final zzCs:Lcom/google/android/gms/internal/zzeq;

.field public final zzCt:Lcom/google/android/gms/internal/zzfa;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzes;-><init>(Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeq;ILcom/google/android/gms/internal/zzfa;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzey;Ljava/lang/String;Lcom/google/android/gms/internal/zzeq;ILcom/google/android/gms/internal/zzfa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzes;->zzCp:Lcom/google/android/gms/internal/zzen;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzes;->zzCq:Lcom/google/android/gms/internal/zzey;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzes;->zzCr:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzes;->zzCs:Lcom/google/android/gms/internal/zzeq;

    iput p5, p0, Lcom/google/android/gms/internal/zzes;->zzCo:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzes;->zzCt:Lcom/google/android/gms/internal/zzfa;

    return-void
.end method

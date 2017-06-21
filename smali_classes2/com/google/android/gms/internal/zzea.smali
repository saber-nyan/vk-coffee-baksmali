.class Lcom/google/android/gms/internal/zzea;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzea$zza;
    }
.end annotation


# instance fields
.field private final zzAB:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzea$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzAC:I

.field private final zzpS:Ljava/lang/String;

.field private zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzea;->zzAC:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzea;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzea;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzea;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzpS:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzea;->zzAC:I

    return v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzdv;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzea$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzea$zza;-><init>(Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/internal/zzdv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea$zza;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    return-void
.end method

.method zzei()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzqH:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method zzej()Lcom/google/android/gms/internal/zzea$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzAB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzea$zza;

    return-object v0
.end method

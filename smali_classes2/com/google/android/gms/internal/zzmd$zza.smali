.class public final Lcom/google/android/gms/internal/zzmd$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final zzakx:I

.field public final zzaky:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzakx:I

    iput p2, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzaky:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/internal/zzmd$zza;

    if-nez v2, :cond_1

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzmd$zza;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p1, Lcom/google/android/gms/internal/zzmd$zza;->zzakx:I

    iget v3, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzakx:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/gms/internal/zzmd$zza;->zzaky:I

    iget v3, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzaky:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzakx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzmd$zza;->zzaky:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

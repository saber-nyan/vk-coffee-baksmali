.class public final Lcom/google/android/gms/internal/zzsz$zzd;
.super Lcom/google/android/gms/internal/zzso;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzso",
        "<",
        "Lcom/google/android/gms/internal/zzsz$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbuR:J

.field public zzbuS:J

.field public zzbuT:J

.field public zzbuU:I

.field public zzbuV:Z

.field public zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

.field public zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

.field public zzbuY:[B

.field public zzbuZ:[B

.field public zzbva:[B

.field public zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

.field public zzbvc:Ljava/lang/String;

.field public zzbvd:J

.field public zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

.field public zzbvf:[B

.field public zzbvg:I

.field public zzbvh:[I

.field public zzbvi:J

.field public zzob:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzso;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz$zzd;->zzJF()Lcom/google/android/gms/internal/zzsz$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzsz$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzss;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsz$zzb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsz$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsz$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzss;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsz$zzb;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsz$zza;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsz$zzc;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz$zzd;->zzV(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsz$zzd;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 8
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zze(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zza(I[B)V

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_13

    const/16 v0, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    const/16 v0, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzso;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void
.end method

.method public zzJF()Lcom/google/android/gms/internal/zzsz$zzd;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    iput v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsz$zze;->zzJG()[Lcom/google/android/gms/internal/zzsz$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    iput v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    sget-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuu:I

    return-object p0
.end method

.method public zzV(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsz$zzd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsz$zzd;->zza(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzsz$zze;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzsz$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsz$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzsz$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsz$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzsz$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJe()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zzmq(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJk()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zzmr(I)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa2 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb0 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected zzz()I
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzso;->zzz()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuW:[Lcom/google/android/gms/internal/zzsz$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvb:Lcom/google/android/gms/internal/zzsz$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuZ:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuX:Lcom/google/android/gms/internal/zzsz$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuV:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzf(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbva:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzsn;->zze(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbve:Lcom/google/android/gms/internal/zzsz$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvg:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzsn;->zzmx(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvh:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuT:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_16

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method

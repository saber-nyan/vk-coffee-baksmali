.class public abstract Lcom/google/android/gms/internal/zzso;
.super Lcom/google/android/gms/internal/zzsu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzso",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzsu;"
    }
.end annotation


# instance fields
.field protected zzbuj:Lcom/google/android/gms/internal/zzsq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzso;->zzJp()Lcom/google/android/gms/internal/zzso;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzso;->zzJp()Lcom/google/android/gms/internal/zzso;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzso;, "Lcom/google/android/gms/internal/zzso<TM;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsq;->zzmG(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsr;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public zzJp()Lcom/google/android/gms/internal/zzso;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzsu;->clone()Lcom/google/android/gms/internal/zzsu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzso;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzss;->zza(Lcom/google/android/gms/internal/zzso;Lcom/google/android/gms/internal/zzso;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzsp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzsp",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    iget v2, p1, Lcom/google/android/gms/internal/zzsp;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsx;->zzmJ(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzsq;->zzmF(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzsr;->zzb(Lcom/google/android/gms/internal/zzsp;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzsm;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzsm;->zzmo(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzsx;->zzmJ(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsm;->zzz(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzsw;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzsw;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzsq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsq;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsr;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzsq;->zza(ILcom/google/android/gms/internal/zzsr;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzsr;->zza(Lcom/google/android/gms/internal/zzsw;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsq;->zzmF(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v0

    goto :goto_1
.end method

.method protected zzz()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsq;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzbuj:Lcom/google/android/gms/internal/zzsq;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzsq;->zzmG(I)Lcom/google/android/gms/internal/zzsr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsr;->zzz()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

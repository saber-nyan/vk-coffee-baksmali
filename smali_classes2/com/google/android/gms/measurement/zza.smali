.class public final Lcom/google/android/gms/measurement/zza;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzaUe:Lcom/google/android/gms/measurement/zza;


# instance fields
.field private final zzaUa:Ljava/lang/String;

.field private final zzaUb:Lcom/google/android/gms/common/api/Status;

.field private final zzaUc:Z

.field private final zzaUd:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v2, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "google_app_measurement_enable"

    const-string/jumbo v5, "integer"

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUd:Z

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUc:Z

    const-string/jumbo v0, "google_app_id"

    const-string/jumbo v1, "string"

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUc:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Missing an expected resource: \'R.string.google_app_id\' for initializing Google services.  Possible causes are missing google-services.json or com.google.gms.google-services gradle plugin."

    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    :goto_3
    iput-object v7, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    :goto_4
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/zza;->zzaUd:Z

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzagC:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/zza;->zzaUc:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The resource \'R.string.google_app_id\' is invalid, expected an app  identifier and found: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    :goto_5
    iput-object v7, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzagC:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    goto :goto_5

    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzagC:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    goto :goto_4
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzagC:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/zza;->zzaUc:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUd:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzAp()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Initialize must be called before getGoogleAppId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zza;->zzAq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzAr()Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Initialize must be called before isMeasurementEnabled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zza;->zzAt()Z

    move-result v0

    return v0
.end method

.method public static zzAs()Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Initialize must be called before isMeasurementExplicitlyDisabled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/zza;->zzaUd:Z

    return v0
.end method

.method public static zzaR(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    const-string/jumbo v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/zza;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 2

    const-string/jumbo v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "App ID must be nonempty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/measurement/zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zza;->zzeu(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/zza;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/measurement/zza;->zzaUe:Lcom/google/android/gms/measurement/zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method zzAq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    return-object v0
.end method

.method zzAt()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzeu(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/zza;->zzaUa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzagC:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

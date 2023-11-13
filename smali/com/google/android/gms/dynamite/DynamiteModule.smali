.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    }
.end annotation


# static fields
.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/zzg;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

.field public static zzb:Ljava/lang/Boolean; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field public static zzc:Ljava/lang/String; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field public static zzd:Z = false
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field public static zze:I = -0x1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field public static final zzf:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/dynamite/zzn;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzg:Lcom/google/android/gms/dynamite/zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzh:Lcom/google/android/gms/dynamite/zze;

.field public static zzj:Lcom/google/android/gms/dynamite/zzq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field public static zzk:Lcom/google/android/gms/dynamite/zzr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field


# instance fields
.field public final zzi:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Lcom/google/android/gms/dynamite/zze;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/zzg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ModuleDescriptor"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x2d

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/dynamite/zzn;

    new-instance v6, Lcom/google/android/gms/dynamite/zzn;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/android/gms/dynamite/zzn;-><init>(Landroidx/core/R$id;)V

    .line 2
    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    .line 3
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v12, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Lcom/google/android/gms/dynamite/zze;

    .line 5
    invoke-interface {v2, v1, v3, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v12

    const-string v13, "DynamiteModule"

    .line 6
    iget v14, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v15, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x44

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v10, v16, v17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Considering local module "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and remote module "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v10, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v10, :cond_18

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    iget v10, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v10, :cond_18

    move v10, v11

    :cond_0
    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    iget v14, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v14, :cond_18

    :cond_1
    if-ne v10, v11, :cond_4

    .line 8
    invoke-static {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    :cond_4
    if-ne v10, v13, :cond_17

    .line 14
    :try_start_1
    iget v10, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 15
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_12

    .line 16
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_a

    const-string v14, "DynamiteModule"

    .line 17
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v13, v16, 0x33

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Selected remote version of "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", version >= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v11, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzr;

    .line 18
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_9

    .line 19
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v14, :cond_8

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    iget-object v13, v13, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 21
    invoke-static {}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap()Lcom/google/android/gms/dynamic/IObjectWrapper;

    monitor-enter v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    sget v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    if-lt v2, v15, :cond_5

    const/16 v17, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move/from16 v17, v2

    .line 22
    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 23
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "DynamiteModule"

    const-string v4, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 24
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v2, v14}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 26
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, v13}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v11, v2, v3, v10, v4}, Lcom/google/android/gms/dynamite/zzr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string v2, "DynamiteModule"

    const-string v4, "Dynamite loader version < 2, falling back to loadModule2"

    .line 28
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v2, v14}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 30
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, v13}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v11, v2, v3, v10, v4}, Lcom/google/android/gms/dynamite/zzr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 32
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_7

    .line 33
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 34
    invoke-direct {v4, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 35
    :cond_7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to get module context"

    .line 36
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_0
    move-exception v0

    .line 37
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    .line 38
    :cond_8
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "No result cursor"

    .line 39
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "DynamiteLoaderV2 was not cached."

    .line 41
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_1
    move-exception v0

    .line 42
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0

    :cond_a
    const-string v2, "DynamiteModule"

    .line 43
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Selected remote version of "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version >= "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v4

    const/4 v11, 0x6

    .line 46
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 48
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const/4 v4, 0x3

    if-lt v11, v4, :cond_c

    .line 49
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v4, :cond_b

    .line 50
    new-instance v11, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v11, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 51
    iget-object v4, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 52
    new-instance v13, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v13, v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v2, v11, v3, v10, v13}, Lcom/google/android/gms/dynamite/zzq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_3

    .line 54
    :cond_b
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "No cached result cursor holder"

    .line 55
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne v11, v15, :cond_d

    const-string v4, "DynamiteModule"

    const-string v11, "IDynamite loader version = 2"

    .line 56
    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v2, v4, v3, v10}, Lcom/google/android/gms/dynamite/zzq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_3

    :cond_d
    const-string v4, "DynamiteModule"

    const-string v11, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 59
    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2, v4, v3, v10}, Lcom/google/android/gms/dynamite/zzq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 62
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 63
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_e

    .line 65
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_5

    .line 66
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    :goto_5
    iget-object v1, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_f

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_f
    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v4

    .line 70
    :cond_10
    :try_start_d
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to load remote module."

    .line 71
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_11
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to create IDynamiteLoader."

    .line 73
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_12
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to determine which loading route to use."

    .line 75
    invoke-direct {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_2
    move-exception v0

    .line 76
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_10
    const-string v0, "null reference"
    :try_end_10
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 77
    :try_start_11
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_12
    const-string v0, "CrashUtils"

    const-string v7, "Error adding exception to DropBox!"

    .line 78
    invoke-static {v0, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_6
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to load remote module."

    .line 80
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 81
    throw v0

    :catch_2
    move-exception v0

    .line 82
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to load remote module."

    .line 83
    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_12
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :catch_3
    move-exception v0

    :try_start_13
    const-string v2, "DynamiteModule"

    const-string v4, "Failed to load remote module: "

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 85
    :cond_13
    new-instance v7, Ljava/lang/String;

    .line 86
    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    :goto_7
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v2, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v2, :cond_16

    new-instance v4, Lcom/google/android/gms/dynamite/zzo;

    invoke-direct {v4, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(I)V

    move-object/from16 v2, p1

    .line 88
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v2

    .line 89
    iget v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_16

    .line 90
    invoke-static {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    .line 91
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_8

    .line 92
    :cond_14
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 94
    :goto_8
    iget-object v1, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_15

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_15
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 96
    invoke-virtual {v1, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    .line 97
    :cond_16
    :try_start_14
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    .line 98
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_17
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VersionPolicy returned invalid code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_18
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 102
    iget v1, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v2, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No acceptable module "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found. Local version is "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v0

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_19

    .line 103
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    .line 104
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_9

    .line 105
    :cond_19
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :goto_9
    iget-object v1, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_1a

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 9

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v2, 0x0

    if-nez v1, :cond_7

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "sClassLoader"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v4, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 7
    :cond_0
    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_1
    sget-boolean v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    if-nez v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    :try_start_6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v5

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance v6, Ldalvik/system/DelegateLastClassLoader;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 13
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 14
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    .line 15
    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_6
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return v5

    .line 17
    :cond_5
    :goto_1
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return v5

    .line 18
    :catch_1
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 19
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    :goto_3
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catch_2
    move-exception v1

    :try_start_d
    const-string v3, "DynamiteModule"

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to load module via V2: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    :goto_4
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 23
    :cond_7
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 24
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 25
    :try_start_f
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    return p0

    :catch_3
    move-exception p1

    :try_start_10
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 29
    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-nez v3, :cond_a

    goto/16 :goto_b

    .line 30
    :cond_a
    :try_start_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v4, 0x6

    .line 31
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x3

    if-lt v4, v0, :cond_10

    .line 34
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    .line 35
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v4, :cond_b

    .line 36
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto/16 :goto_b

    .line 37
    :cond_b
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 38
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v5, p1

    move v6, p2

    .line 39
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/dynamite/zzq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz p1, :cond_f

    .line 41
    :try_start_12
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_7

    .line 42
    :cond_c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_e

    .line 43
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v3, :cond_d

    iput-object p1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    move-object v2, p1

    :goto_6
    if-eqz v2, :cond_12

    .line 44
    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_8

    :cond_f
    :goto_7
    :try_start_14
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 45
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz p1, :cond_14

    .line 46
    :try_start_15
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto/16 :goto_b

    :catchall_1
    move-exception p2

    goto/16 :goto_d

    :catch_4
    move-exception p2

    move-object v2, p1

    goto :goto_9

    :cond_10
    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    :try_start_16
    const-string v0, "DynamiteModule"

    const-string v4, "IDynamite loader version = 2, no high precision latency measurement."

    .line 47
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v4

    .line 50
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 51
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    .line 53
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_8

    :cond_11
    const-string v4, "DynamiteModule"

    const-string v5, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 56
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/common/zza;->zza()Landroid/os/Parcel;

    move-result-object v5

    .line 59
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 60
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gms/internal/common/zza;->zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :cond_12
    :goto_8
    move v1, p2

    goto :goto_b

    :catchall_2
    move-exception p1

    goto :goto_c

    :catch_5
    move-exception p1

    move-object p2, p1

    :goto_9
    :try_start_17
    const-string p1, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 65
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    .line 66
    :cond_13
    new-instance p2, Ljava/lang/String;

    .line 67
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v2, :cond_14

    .line 68
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_b
    return v1

    :goto_c
    move-object p2, p1

    move-object p1, v2

    :goto_d
    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_15
    throw p2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :catchall_3
    move-exception p1

    .line 70
    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw p1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :catchall_4
    move-exception p1

    const-string p2, "null reference"

    .line 71
    :try_start_1b
    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p2, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    .line 72
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_e
    throw p1
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Lcom/google/android/gms/dynamite/zzd;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "api_force_staging"

    const-string v4, "api"

    const/4 v9, 0x1

    if-eq v9, p2, :cond_0

    move-object p0, v4

    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    .line 3
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 4
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "com.google.android.gms.chimera"

    .line 5
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "requestStartTime"

    .line 8
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_9

    .line 11
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 12
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_6

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x2

    .line 13
    :try_start_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    const-string v2, "loaderVersion"

    .line 14
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sput v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    :cond_1
    const-string v2, "disableStandaloneDynamiteLoader"

    .line 16
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 17
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    sput-boolean v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    goto :goto_1

    :cond_3
    move v2, p1

    .line 18
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v3, :cond_4

    iput-object p0, v1, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_4
    move v9, p1

    :goto_2
    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p0

    :goto_3
    move-object p0, v0

    move p1, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 20
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_4
    if-nez p1, :cond_8

    if-eqz p0, :cond_7

    .line 21
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return p2

    .line 22
    :cond_8
    :try_start_6
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "forcing fallback to container DynamiteLoader impl"

    .line 23
    invoke-direct {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p0

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    move-object p1, p0

    .line 26
    :goto_5
    :try_start_7
    instance-of p0, p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p0, :cond_a

    .line 27
    throw p1

    .line 28
    :cond_a
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "V2 version check failed"

    .line 29
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :goto_6
    move-object p0, p1

    :goto_7
    if-eqz v0, :cond_b

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_b
    throw p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static zzd(Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation

    :try_start_0
    const-string v0, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/dynamite/zzr;

    if-eqz v1, :cond_1

    .line 4
    move-object p0, v0

    check-cast p0, Lcom/google/android/gms/dynamite/zzr;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamite/zzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamite/zzr;-><init>(Landroid/os/IBinder;)V

    move-object p0, v0

    .line 6
    :goto_0
    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzr;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "Failed to instantiate dynamite loader"

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzf(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/zzq;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x3

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lcom/google/android/gms/dynamite/zzq;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-eqz v2, :cond_4

    .line 9
    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/zzq;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "Failed to instantiate module class: "

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

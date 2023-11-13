.class public final synthetic Lcom/google/mlkit/common/internal/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzg;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzg;->zza:Lcom/google/mlkit/common/internal/zzg;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/arch/core/executor/TaskExecutor;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/common/internal/model/zzg;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p1, v0}, Landroidx/arch/core/executor/TaskExecutor;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {p0}, Lcom/google/mlkit/common/internal/model/zzg;-><init>()V

    return-object p0
.end method

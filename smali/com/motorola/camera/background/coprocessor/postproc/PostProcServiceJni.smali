.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;
.super Ljava/lang/Object;
.source "PostProcServiceJni.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;,
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;,
        Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostProcServiceJni.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostProcServiceJni.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1849#2,2:177\n*S KotlinDebug\n*F\n+ 1 PostProcServiceJni.kt\ncom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni\n*L\n151#1:177,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0003<=>B\u0011\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u0008:\u0010;J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0019\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0086 J\t\u0010\u000b\u001a\u00020\tH\u0086 J\u0019\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0004H\u0086 J\u0011\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0086 J\u0011\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0086 J\u0011\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0004H\u0086 J)\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0086 J\u0011\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0004H\u0086 J\u0011\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0004H\u0086 J\u0011\u0010 \u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0004H\u0086 J\u0010\u0010#\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0010\u0010$\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0006\u0010%\u001a\u00020\u001bJ\n\u0010&\u001a\u0004\u0018\u00010!H\u0016J \u0010+\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u0004H\u0016R\u0019\u0010-\u001a\u0004\u0018\u00010,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R#\u00103\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u0002018\u0006\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001c\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109\u00a8\u0006?"
    }
    d2 = {
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;",
        "",
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
        "jobRequest",
        "",
        "extractAppContext",
        "product",
        "",
        "staticConfig",
        "",
        "initialize",
        "deinitialize",
        "Lcom/motorola/camera/background/common/JobId;",
        "jobid",
        "jobDescription",
        "processJob",
        "processJobCancel",
        "logdDD",
        "setLogDDFlag",
        "logAD",
        "setLogADFlag",
        "mask0",
        "mask1",
        "mask2",
        "mask3",
        "setDebugDumpFlags",
        "mlModelsJson",
        "",
        "setMlModelsList",
        "cacheDir",
        "setCacheDir",
        "filesDir",
        "setFilesDir",
        "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
        "client",
        "addClient",
        "deleteClient",
        "cleanUp",
        "msgIntf",
        "jobId",
        "Lcom/motorola/camera/background/common/ReturnCode;",
        "returnCode",
        "resultDescription",
        "processJobComplete",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "",
        "Lcom/motorola/camera/background/common/TaskId;",
        "mJobsList",
        "Ljava/util/Map;",
        "getMJobsList",
        "()Ljava/util/Map;",
        "",
        "clients",
        "Ljava/util/List;",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "JobRequest",
        "MsgHandler",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field private static mNativeContext:J


# instance fields
.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final mJobsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TwP5dQbK5YWZlSbzQTSyvB6IarA(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient$lambda-0(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    .line 1
    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v0, "bg-postproc-jni"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 3
    sput-wide v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getIdentity$cp()Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object v0
.end method

.method public static final synthetic access$getMNativeContext$cp()J
    .locals 2

    sget-wide v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMNativeContext$cp(J)V
    .locals 0

    sput-wide p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-void
.end method

.method private static final deleteClient$lambda-0(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z
    .locals 0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne v0, v1, :cond_3

    .line 4
    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    const-string p1, "msg"

    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 7
    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;

    .line 8
    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    .line 9
    new-instance p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    .line 13
    invoke-direct {p1, v0, v1, p0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;)V

    .line 14
    iget-object p0, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cleanUp()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final native deinitialize()I
.end method

.method public final deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMJobsList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    return-object p0
.end method

.method public final native initialize(Ljava/lang/String;[B)I
.end method

.method public msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)V

    return-object v0
.end method

.method public final native processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;)I
.end method

.method public final native processJobCancel(Lcom/motorola/camera/background/common/JobId;)I
.end method

.method public processJobComplete(Lcom/motorola/camera/background/common/JobId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V
    .locals 10

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    .line 7
    :try_start_0
    invoke-direct {p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "appContext"

    .line 8
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    invoke-direct {v5, v3, p3, p2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    .line 10
    sget-object v3, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 11
    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$$serializer;

    .line 12
    invoke-virtual {v3, v6, v5}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_1

    .line 13
    sget-object v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 14
    iget v5, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 15
    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v7

    .line 17
    sget-object v9, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 18
    invoke-interface/range {v4 .. v9}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 19
    sget-object v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 20
    iget-object v6, v6, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " processJobComplete() exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Client is not available to send message to"

    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final native setCacheDir(Ljava/lang/String;)V
.end method

.method public final native setDebugDumpFlags(IIII)I
.end method

.method public final native setFilesDir(Ljava/lang/String;)V
.end method

.method public final native setLogADFlag(Ljava/lang/String;)I
.end method

.method public final native setLogDDFlag(I)I
.end method

.method public final native setMlModelsList(Ljava/lang/String;)V
.end method

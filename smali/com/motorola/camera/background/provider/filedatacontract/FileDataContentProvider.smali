.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;
.super Landroid/content/ContentProvider;
.source "FileDataContentProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;",
        "Landroid/content/ContentProvider;",
        "<init>",
        "()V",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final AUTHORITY:Ljava/lang/String;

.field public final CODE_ALL_VALUES:I

.field public final CODE_SINGLE_VALUE:I

.field public mFileDataRepo:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

.field public final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider"

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v1, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(CONTENT_STRING)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_ALL_VALUES:I

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_SINGLE_VALUE:I

    .line 6
    new-instance v3, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v4, "fileData_table"

    .line 7
    invoke-virtual {v3, v0, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "fileData_table/#"

    .line 8
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iput-object v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_SINGLE_VALUE:I

    if-ne v2, v3, :cond_2

    .line 5
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$1;

    invoke-direct {v0, v1, p0, p1, p3}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_2
    iget v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_ALL_VALUES:I

    if-ne v2, v3, :cond_3

    .line 7
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;

    invoke-direct {v0, v1, p0, p3}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 8
    :goto_1
    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 9
    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Delete: Unknown URI: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileDataContentProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, ".fileData_table"

    .line 2
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_ALL_VALUES:I

    if-ne v1, v2, :cond_0

    const-string/jumbo p0, "vnd.android.cursor.dir/"

    .line 5
    invoke-static {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    iget p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_SINGLE_VALUE:I

    if-ne v1, p0, :cond_1

    const-string/jumbo p0, "vnd.android.cursor.item/"

    .line 7
    invoke-static {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getType: Unknown URI: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileDataContentProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 3
    new-instance v3, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;

    invoke-direct {v3, v2, p0, p2, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$insert$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5
    iget-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->mFileDataRepo:Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository;

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    .line 4
    iget p5, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_ALL_VALUES:I

    if-ne p3, p5, :cond_1

    .line 5
    new-instance p3, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$query$1;

    invoke-direct {p3, p2, p0, p4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$query$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget p5, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_SINGLE_VALUE:I

    if-ne p3, p5, :cond_4

    .line 7
    new-instance p3, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$query$2;

    invoke-direct {p3, p2, p0, p1, p4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$query$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 8
    :goto_0
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Landroid/database/Cursor;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    :cond_2
    invoke-interface {p3, p4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 9
    :cond_3
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/database/Cursor;

    return-object p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Query: Unknown URI: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileDataContentProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string/jumbo p3, "uri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_SINGLE_VALUE:I

    if-ne v1, v2, :cond_2

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileData$Companion;

    invoke-virtual {v1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileData$Companion;->fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 6
    iput-wide v1, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    .line 7
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, -0x1

    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    new-instance v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$update$1;

    invoke-direct {v1, p2, p0, v0, p4}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$update$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 10
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0

    .line 11
    :cond_2
    iget p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->CODE_ALL_VALUES:I

    const-string p2, "FileDataContentProvider"

    if-ne v1, p0, :cond_3

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Update: Multiple updates not supported: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Update: Unknown URI: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

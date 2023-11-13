.class final Lz;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field private a:Laf$a;

.field private b:Laf$a;

.field private final synthetic c:Lx;


# direct methods
.method public constructor <init>(Lx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz;->c:Lx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Laf$a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object p0, p0, Lz;->c:Lx;

    .line 2
    iget-object p0, p0, Lx;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    .line 6
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xc

    if-le p0, p1, :cond_1

    move p0, p1

    .line 7
    :cond_1
    invoke-static {p0}, Laf$a;->a(I)Laf$a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    sget-object p0, Laf$a;->g:Laf$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 10
    :cond_2
    :try_start_2
    invoke-static {p0}, Laf$a;->a(I)Laf$a;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 12
    :cond_3
    :goto_0
    :try_start_3
    sget-object p0, Laf$a;->c:Laf$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_4
    const-string p1, "LensSdkParamsReader"

    const-string v1, "Failed to start Lens due to unexpected exception."

    .line 14
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    sget-object p0, Laf$a;->c:Laf$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    :goto_1
    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    sget-object p1, Lx;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lz;->a(Ljava/lang/String;)Laf$a;

    move-result-object p1

    iput-object p1, p0, Lz;->a:Laf$a;

    .line 2
    sget-object p1, Lx;->b:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lz;->a(Ljava/lang/String;)Laf$a;

    move-result-object p1

    iput-object p1, p0, Lz;->b:Laf$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lz;->a:Laf$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object p1, p0, Lz;->b:Laf$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-object p1, p0, Lz;->c:Lx;

    .line 4
    iget-object v0, p1, Lx;->e:Laf;

    .line 5
    sget v1, Lby$e;->e:I

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Laf;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lby$b;

    .line 8
    invoke-virtual {v1, v0}, Lby$b;->a(Lby;)Lby$b;

    .line 9
    iget-object v0, p0, Lz;->a:Laf$a;

    .line 10
    invoke-virtual {v1, v0}, Lby$b;->a(Laf$a;)Lby$b;

    move-result-object v0

    iget-object v1, p0, Lz;->b:Laf$a;

    .line 11
    invoke-virtual {v0, v1}, Lby$b;->b(Laf$a;)Lby$b;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Laf;

    .line 13
    iput-object v0, p1, Lx;->e:Laf;

    .line 14
    iget-object p1, p0, Lz;->c:Lx;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p1, Lx;->f:Z

    .line 16
    iget-object p1, p1, Lx;->d:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa;

    .line 18
    iget-object v1, p0, Lz;->c:Lx;

    .line 19
    iget-object v1, v1, Lx;->e:Laf;

    .line 20
    invoke-interface {v0, v1}, Laa;->a(Laf;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lz;->c:Lx;

    .line 22
    iget-object p0, p0, Lx;->d:Ljava/util/List;

    .line 23
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

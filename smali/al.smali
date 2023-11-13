.class public Lal;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laa;


# instance fields
.field public final a:Lae;


# direct methods
.method public constructor <init>(Lae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal;->a:Lae;

    return-void
.end method


# virtual methods
.method public a(Laf;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lal;->a:Lae;

    .line 2
    invoke-virtual {p1}, Laf;->b()Laf$a;

    move-result-object v0

    sget-object v1, Laf$a;->b:Laf$a;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lae;->i()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Laf;->b()Laf$a;

    move-result-object p1

    iput-object p1, p0, Lae;->d:Laf$a;

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Lae;->a(I)V

    return-void
.end method

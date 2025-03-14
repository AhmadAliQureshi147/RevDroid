.class public final synthetic Ly/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ly/c;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Ly/c$d;

.field public final synthetic i:Ljava/nio/ByteBuffer;

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Ly/c;Ljava/lang/String;ILy/c$d;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->e:Ly/c;

    iput-object p2, p0, Ly/b;->f:Ljava/lang/String;

    iput p3, p0, Ly/b;->g:I

    iput-object p4, p0, Ly/b;->h:Ly/c$d;

    iput-object p5, p0, Ly/b;->i:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Ly/b;->j:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly/b;->e:Ly/c;

    iget-object v1, p0, Ly/b;->f:Ljava/lang/String;

    iget v2, p0, Ly/b;->g:I

    iget-object v3, p0, Ly/b;->h:Ly/c$d;

    iget-object v4, p0, Ly/b;->i:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Ly/b;->j:J

    invoke-static/range {v0 .. v6}, Ly/c;->e(Ly/c;Ljava/lang/String;ILy/c$d;Ljava/nio/ByteBuffer;J)V

    return-void
.end method
